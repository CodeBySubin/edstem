import 'dart:async';

import 'package:edstem/core/constants/app_colors.dart';
import 'package:edstem/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edstem/presentation/bloc/search/search_bloc.dart';
import 'package:edstem/presentation/bloc/details/details_bloc.dart';
import 'package:edstem/presentation/pages/search/search.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  await configureDependencies(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchBloc>(
          create: (_) => getIt<SearchBloc>(),
        ),
        BlocProvider<MovieDetailBloc>(
          create: (_) => getIt<MovieDetailBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Edstem',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: const Search(),
      ),
    );
  }
}



// Search screen that can be added to the movie app
class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  bool _isLoading = false;
  bool _hasError = false;
  String _errorMessage = '';
  List<Map<String, dynamic>> _searchResults = [];
  
  // Example search results - in a real app, these would come from an API
  final List<Map<String, dynamic>> _mockResults = [
    {
      "title": "Harry Potter and the Deathly Hallows: Part 2",
      "year": "2011",
      "poster": "https://m.media-amazon.com/images/M/MV5BOTA1Mzc2N2ItZWRiNS00MjQzLTlmZDQtMjU0NmY1YWRkMGQ4XkEyXkFqcGc@._V1_SX300.jpg",
      "imdbID": "tt1201607",
    },
    {
      "title": "Harry Potter and the Deathly Hallows: Part 1",
      "year": "2010",
      "poster": "https://m.media-amazon.com/images/M/MV5BMTQ2OTE1Mjk0N15BMl5BanBnXkFtZTcwODE3MDAwNA@@._V1_SX300.jpg",
      "imdbID": "tt0926084",
    },
    {
      "title": "Harry Potter and the Half-Blood Prince",
      "year": "2009",
      "poster": "https://m.media-amazon.com/images/M/MV5BNzU3NDg4NTAyNV5BMl5BanBnXkFtZTcwOTg2ODg1Mg@@._V1_SX300.jpg",
      "imdbID": "tt0417741",
    },
    {
      "title": "Harry Potter and the Order of the Phoenix",
      "year": "2007",
      "poster": "https://m.media-amazon.com/images/M/MV5BOTA3MmRmZDgtOWU1Ny00ZDc5LWFkN2YtNzNlY2UxZmY0N2IyXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg",
      "imdbID": "tt0373889",
    },
    {
      "title": "Harry Potter and the Goblet of Fire",
      "year": "2005",
      "poster": "https://m.media-amazon.com/images/M/MV5BMTI1NDMyMjExOF5BMl5BanBnXkFtZTcwOTc4MjQzMQ@@._V1_SX300.jpg",
      "imdbID": "tt0330373",
    },
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  // Handle search input with debounce to prevent excessive API calls
  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (_searchController.text.isNotEmpty) {
        _performSearch(_searchController.text);
      } else {
        setState(() {
          _searchResults = [];
        });
      }
    });
  }

  // Perform search (mock implementation)
  Future<void> _performSearch(String query) async {
    // Show loading state
    setState(() {
      _isLoading = true;
      _hasError = false;
    });

    try {
      // Simulate API call with delay
      await Future.delayed(const Duration(seconds: 1));
      
      // Filter mock results (in a real app, this would be an API call)
      final filteredResults = _mockResults.where(
        (movie) => movie["title"]!.toLowerCase().contains(query.toLowerCase())
      ).toList();
      
      setState(() {
        _searchResults = filteredResults;
        _isLoading = false;
        
        // Show error if no results found
        if (filteredResults.isEmpty) {
          _hasError = true;
          _errorMessage = 'No movies found matching "$query"';
        }
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _hasError = true;
        _errorMessage = 'Something went wrong. Please try again.';
      });
    }
  }

  // Navigate to movie details (would connect to the Movie Details screen)
  void _navigateToMovieDetails(Map<String, dynamic> movie) {
    // In a real app, this would navigate to the movie details screen
    // Navigator.push(
    //   context, 
    //   MaterialPageRoute(builder: (context) => MovieDetailsScreen(movieId: movie["imdbID"]))
    // );
    
    // For now, just show a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Selected: ${movie["title"]}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App bar with search
            _buildSearchAppBar(),
            
            // Results, loading indicator, or error message
            Expanded(
              child: _isLoading
                  ? _buildLoadingIndicator()
                  : _hasError
                      ? _buildErrorMessage()
                      : _searchResults.isEmpty && _searchController.text.isEmpty
                          ? _buildEmptyState()
                          : _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  // Custom search app bar
  Widget _buildSearchAppBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Back button
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(width: 8),
              // Title
              const Text(
                'Movie Search',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Search field
          TextField(
            controller: _searchController,
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
              hintText: 'Search for movies...',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _searchController.clear();
                        setState(() {
                          _searchResults = [];
                          _hasError = false;
                        });
                      },
                    )
                  : null,
              filled: true,
              fillColor: Colors.grey.shade800,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (value) => _performSearch(value),
          ),
        ],
      ),
    );
  }

  // Loading spinner
  Widget _buildLoadingIndicator() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
          ),
          const SizedBox(height: 16),
          Text(
            'Searching for movies...',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  // Error message display
  Widget _buildErrorMessage() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.movie_filter_outlined,
              size: 70,
              color: Colors.grey.shade700,
            ),
            const SizedBox(height: 16),
            Text(
              _errorMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                if (_searchController.text.isNotEmpty) {
                  _performSearch(_searchController.text);
                }
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Empty state when no search has been performed
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 80,
            color: Colors.grey.shade700,
          ),
          const SizedBox(height: 16),
          Text(
            'Search for your favorite movies',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Enter a movie title in the search bar above to find movies',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Search results list
  Widget _buildSearchResults() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        final movie = _searchResults[index];
        return _buildMovieListItem(movie);
      },
    );
  }

  // Individual movie list item
  Widget _buildMovieListItem(Map<String, dynamic> movie) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.grey.shade900,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _navigateToMovieDetails(movie),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie poster with rounded corners
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.network(
                movie["poster"]!,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 150,
                    width: 100,
                    color: Colors.grey.shade800,
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 40,
                      color: Colors.white54,
                    ),
                  );
                },
              ),
            ),
            // Movie details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      movie["title"]!,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Year
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 16,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Released: ${movie["year"]!}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // View details button
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton.icon(
                        onPressed: () => _navigateToMovieDetails(movie),
                        icon: const Icon(
                          Icons.info_outline,
                          size: 16,
                        ),
                        label: const Text('Details'),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// To integrate this with the main app, you would:
// 1. Add a search button to the main screen that navigates to this screen
// 2. Implement the actual API call in _performSearch()
// 3. Wire up the _navigateToMovieDetails() method to go to your movie details screen

// Example of how to add a search button to the app bar in your main screen:
/*
AppBar(
  title: Text('Movies'),
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MovieSearchScreen()),
        );
      },
    ),
  ],
)
*/