import 'package:cinepolis/controller/Moviecontroller.dart';
import 'package:cinepolis/models/Movie.dart';
import 'package:cinepolis/widgets/Navbar.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.location_on_outlined, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        "Malang",
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Movie / Cinema',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          // Tab Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Movie',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                width: 195,
                height: 2,
                color: Colors.blue,
              ),
                ],
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'cinema');
                    },
                    child: const Text(
                      'Cinema',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                width: 195,
                height: 2,
                color: Colors.grey,
              ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          // Movie List
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.5,
                ),
                itemCount: movieList.length,
                itemBuilder: (context, index) {
                  final movie = movieList[index];
                  return _buildMovieCard(movie);
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(),
    );
  }

  // Reusable Widget for Movie Card
  Widget _buildMovieCard(Movie movie) {
    return Container(
      height: 2000,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              movie.image,
              height: 239,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  movie.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 28, 115),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  movie.age,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color:Color.fromARGB(255, 27, 28, 115), 
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                      width: double.infinity,
                      height: 32,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 27, 28, 115),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ), onPressed: () {}, 
                      child: Text("Buy Now", style: TextStyle(color: Colors.white),),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
