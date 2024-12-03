import 'package:cinepolis/views/bookingpage.dart';
import 'package:cinepolis/views/cinema.dart';
import 'package:cinepolis/views/homepage.dart';
import 'package:cinepolis/views/movie.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  void changeSelectedNavBar(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.local_movies,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingPage()),
              );
            },
          ),
          label: 'My Booking',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoviePage()),
              );
            },
          ),
          label: 'Movie',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.view_sidebar_rounded,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cinemapage()),
              );
            },
          ),
          label: 'Cinema',
        ),
      ],
    );
  }
}
