
import 'package:flutter/material.dart';

void main() {
  runApp(const MovieApp());
}

class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String description;
  final Color color;
  final IconData icon;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.description,
    required this.color,
    required this.icon,
  });
}

const List<Movie> movieList = [
  Movie(
    title: 'Interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    rating: 8.7,
    description:
        'Explorers travel through a wormhole in search of a future for humanity.',
    color: Color(0xFF203A63),
    icon: Icons.rocket_launch,
  ),
  Movie(
    title: 'Inception',
    genre: 'Thriller',
    year: 2010,
    rating: 8.8,
    description:
        'A skilled thief enters dreams to steal secrets from the subconscious.',
    color: Color(0xFF77523B),
    icon: Icons.psychology,
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action',
    year: 2008,
    rating: 9.0,
    description:
        'Batman faces a criminal mastermind threatening Gotham City.',
    color: Color(0xFF414141),
    icon: Icons.nightlight_round,
  ),
  Movie(
    title: 'Avatar',
    genre: 'Fantasy',
    year: 2009,
    rating: 7.9,
    description:
        'A journey to Pandora changes a soldier forever.',
    color: Color(0xFF176B87),
    icon: Icons.public,
  ),
  Movie(
    title: 'The Lion King',
    genre: 'Animation',
    year: 1994,
    rating: 8.5,
    description:
        'A young lion discovers courage, family, and responsibility.',
    color: Color(0xFFB87532),
    icon: Icons.pets,
  ),
  Movie(
    title: 'Avengers: Endgame',
    genre: 'Action',
    year: 2019,
    rating: 8.4,
    description:
        'The Avengers unite for one final mission to save the universe.',
    color: Color(0xFF803B4B),
    icon: Icons.shield,
  ),
  Movie(
    title: 'Finding Nemo',
    genre: 'Animation',
    year: 2003,
    rating: 8.2,
    description:
        'A clownfish crosses the ocean to find his missing son.',
    color: Color(0xFF168AAD),
    icon: Icons.water,
  ),
  Movie(
    title: 'Jurassic Park',
    genre: 'Adventure',
    year: 1993,
    rating: 8.2,
    description:
        'A dinosaur theme park turns into a fight for survival.',
    color: Color(0xFF48733C),
    icon: Icons.forest,
  ),
];

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinema',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF101014),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.redAccent,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MovieHomePage(),
    );
  }
}

class MovieHomePage extends StatefulWidget {
  const MovieHomePage({super.key});

  @override
  State<MovieHomePage> createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<MovieHomePage> {
  String searchQuery = '';
  String selectedGenre = 'All';

  final List<String> genres = [
    'All',
    'Action',
    'Sci-Fi',
    'Thriller',
    'Fantasy',
    'Animation',
    'Adventure',
  ];

  List<Movie> get filteredMovies {
    return movieList.where((movie) {
      final matchesSearch = movie.title
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      final matchesGenre =
          selectedGenre == 'All' || movie.genre == selectedGenre;

      return matchesSearch && matchesGenre;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final displayedMovies = filteredMovies;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF19191F),
        centerTitle: true,
        title: const Text(
          'CINEMA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 12),
              child: Text(
                'Discover Movies',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: (value) {
                  setState(() => searchQuery = value);
                },
                decoration: InputDecoration(
                  hintText: 'Search movies...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: const Color(0xFF202027),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 42,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: genres.length,
                separatorBuilder: (_, __) =>
                    const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final genre = genres[index];

                  return ChoiceChip(
                    label: Text(genre),
                    selected: selectedGenre == genre,
                    onSelected: (_) {
                      setState(() => selectedGenre = genre);
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: displayedMovies.isEmpty
                  ? const Center(child: Text('No movies found'))
                  : GridView.builder(
                      padding: const EdgeInsets.all(12),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.62,
                      ),
                      itemCount: displayedMovies.length,
                      itemBuilder: (context, index) {
                        final movie = displayedMovies[index];

                        return InkWell(
                          borderRadius: BorderRadius.circular(14),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    MovieDetailsPage(movie: movie),
                              ),
                            );
                          },
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            color: const Color(0xFF202027),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    color: movie.color,
                                    child: Icon(
                                      movie.icon,
                                      size: 70,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        movie.title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '${movie.year} • ${movie.genre}',
                                        style: const TextStyle(
                                          color: Colors.white60,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 17,
                                          ),
                                          const SizedBox(width: 4),
                                          Text('${movie.rating}'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDetailsPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailsPage({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Details')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: movie.color,
              child: Icon(
                movie.icon,
                size: 110,
                color: Colors.white70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('${movie.year} • ${movie.genre}'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 6),
                      Text('${movie.rating} / 10'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    movie.description,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
