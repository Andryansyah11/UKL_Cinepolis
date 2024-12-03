import 'package:cinepolis/widgets/Navbar.dart';
import 'package:flutter/material.dart';

class Cinemapage extends StatefulWidget {
  const Cinemapage({super.key});

  @override
  State<Cinemapage> createState() => _CinemapageState();
}

class _CinemapageState extends State<Cinemapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Cinema / Movie',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'movie');
                    },
                    child: const Text(
                      'Movie',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
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
                        color: Colors.blue,
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
            ],
          ),
          SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 1,bottom: 12, left: 12, right: 12),
              child: Column(
                children: [Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ]
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Malang Town Square",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 27, 28, 115),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                "8.03 km away",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          // Rating Stars and Score
                          const Row(
                            children: [
                              Icon(Icons.local_movies_rounded, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                "REGULAR*LUXE",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          // Rating Stars and Score
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ] 
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Araya",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 27, 28, 115),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                "15.03 km away",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          // Rating Stars and Score
                          const Row(
                            children: [
                              Icon(Icons.local_movies_rounded, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                "REGULAR",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),]),
                    ),
                  ],
                ),
              ),
              
              ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
