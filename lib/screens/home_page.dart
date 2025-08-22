import 'package:flutter/material.dart';
import 'package:movix_pro/routes.dart';
import 'package:movix_pro/widgets/genre_item_widget.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Section
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 0), // remove extra default padding
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.profile),
                        icon: Icon(Icons.person),
                      ),
                    ),
                    title: Text(
                      "Hello,Name",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    minLeadingWidth: 0, // remove extra minimum width
                  ),
                ),

                SizedBox(height: 8),
                // Search Bar Section
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xFF252836),
                            hintText: "Search...",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          print("Filter pressed");
                        },
                        icon: Icon(Icons.filter_list),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Genre Section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Genres",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 100, // fixed height for horizontal ListView
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    children: [
                      GenreItem(name: "Action", imageUrl: "https://via.placeholder.com/80"),
                      GenreItem(name: "Comedy", imageUrl: "https://via.placeholder.com/80"),
                      GenreItem(name: "Drama", imageUrl: "https://via.placeholder.com/80"),
                      GenreItem(name: "Horror", imageUrl: "https://via.placeholder.com/80"),
                      GenreItem(name: "Romance", imageUrl: "https://via.placeholder.com/80"),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Movie Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Movies",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("See All pressed");
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Color(0xFF12CDD9),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 220, // fixed height for horizontal ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 140,
                        margin: EdgeInsets.only(right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                height: 180,
                                color: Colors.grey[800],
                                child: Center(
                                  child: Icon(
                                    Icons.movie,
                                    color: Colors.white54,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Movie $index",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 80), // add extra padding so content is not hidden by the tail
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF252836),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                print("Home Pressed");
              },
              iconSize: 40,
              icon: Icon(Icons.home, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                print("Analytics Pressed");
              },
              iconSize: 40,
              icon: Icon(Icons.analytics_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Routes.profile),
              iconSize: 40,
              icon: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
