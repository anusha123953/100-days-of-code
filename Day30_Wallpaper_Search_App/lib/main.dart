
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const WallpaperApp());
}

class WallpaperApp extends StatelessWidget {
  const WallpaperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper Search',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF101010),
      ),
      home: const WallpaperHomePage(),
    );
  }
}

class WallpaperHomePage extends StatefulWidget {
  const WallpaperHomePage({super.key});

  @override
  State<WallpaperHomePage> createState() =>
      _WallpaperHomePageState();
}

class _WallpaperHomePageState extends State<WallpaperHomePage> {
  static const String apiKey =
      String.fromEnvironment('PEXELS_API_KEY');

  final TextEditingController searchController =
      TextEditingController();

  List<dynamic> wallpapers = [];
  bool isLoading = false;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    fetchWallpapers('nature');
  }

  Future<void> fetchWallpapers(String query) async {
    if (apiKey.isEmpty) {
      setState(() {
        errorMessage = 'Add your Pexels API key to run the app.';
        wallpapers = [];
      });
      return;
    }

    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final uri = Uri.https(
        'api.pexels.com',
        '/v1/search',
        {
          'query': query.isEmpty ? 'nature' : query,
          'per_page': '30',
          'orientation': 'portrait',
        },
      );

      final response = await http.get(
        uri,
        headers: {'Authorization': apiKey},
      );

      if (response.statusCode != 200) {
        throw Exception('API request failed');
      }

      final data = jsonDecode(response.body);

      if (!mounted) return;

      setState(() {
        wallpapers = data['photos'] ?? [];
        if (wallpapers.isEmpty) {
          errorMessage = 'No wallpapers found. Try another search.';
        }
      });
    } catch (e) {
      if (!mounted) return;

      setState(() {
        errorMessage = 'Unable to load wallpapers. Try again.';
      });
    } finally {
      if (mounted) {
        setState(() => isLoading = false);
      }
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wallify',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              textInputAction: TextInputAction.search,
              onSubmitted: fetchWallpapers,
              decoration: InputDecoration(
                hintText: 'Search wallpapers...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () =>
                      fetchWallpapers(searchController.text),
                ),
                filled: true,
                fillColor: Colors.white10,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : errorMessage.isNotEmpty
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                errorMessage,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () => fetchWallpapers(
                                  searchController.text.isEmpty
                                      ? 'nature'
                                      : searchController.text,
                                ),
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                        ),
                      )
                    : GridView.builder(
                        padding: const EdgeInsets.all(12),
                        itemCount: wallpapers.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.65,
                        ),
                        itemBuilder: (context, index) {
                          final photo = wallpapers[index];
                          final imageUrl =
                              photo['src']['medium'] as String;
                          final fullImageUrl =
                              photo['src']['large2x'] ??
                                  photo['src']['large'];

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => PreviewPage(
                                    imageUrl: fullImageUrl,
                                    photographer:
                                        photo['photographer'] ??
                                            'Unknown',
                                  ),
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(14),
                              child: Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, progress) {
                                  if (progress == null) {
                                    return child;
                                  }
                                  return const Center(
                                    child:
                                        CircularProgressIndicator(),
                                  );
                                },
                                errorBuilder:
                                    (context, error, stackTrace) {
                                  return const Center(
                                    child: Icon(Icons.broken_image),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}

class PreviewPage extends StatelessWidget {
  final String imageUrl;
  final String photographer;

  const PreviewPage({
    super.key,
    required this.imageUrl,
    required this.photographer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Wallpaper Preview')),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: InteractiveViewer(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Text('Unable to load image'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Photo by $photographer'),
          ),
        ],
      ),
    );
  }
}
