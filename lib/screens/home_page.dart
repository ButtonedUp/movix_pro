import 'package:flutter/material.dart';
import 'package:movix_pro/widgets/genre_item_widget.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Profile Section
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            print("Icon Pressed");
                          },
                          icon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    title: Text("Hello, Name"),
                  ),
                ),
              ),
            ),
            //Search Bar Section
            Expanded(
              flex: 1,
              child: Container(
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
            ),
            //Genre Section
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        children: [
                          // Dummy genre items
                          GenreItem(
                              name: "Action",
                              imageUrl: "https://via.placeholder.com/80"),
                          GenreItem(
                              name: "Comedy",
                              imageUrl: "https://via.placeholder.com/80"),
                          GenreItem(
                              name: "Drama",
                              imageUrl: "https://via.placeholder.com/80"),
                          GenreItem(
                              name: "Horror",
                              imageUrl: "https://via.placeholder.com/80"),
                          GenreItem(
                              name: "Romance",
                              imageUrl: "https://via.placeholder.com/80"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Movie Section
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                                color: Color(0xFF12CDD9), // custom color
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    // Movie List
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10, // dummy count
                        itemBuilder: (context, index) {
                          return Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Movie Poster
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
                                // Movie Name
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
                  ],
                ),
              ),
            ),
            //Tail Section
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0xFF252836),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: IconButton(
                        onPressed: () {
                          print("Home Pressed");
                        },
                        iconSize: 40,
                        icon: Icon(Icons.home, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: IconButton(
                        onPressed: () {
                          print("Profile Pressed");
                        },
                        iconSize: 40,
                        icon: Icon(Icons.person, color: Colors.white),
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
