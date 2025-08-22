import 'package:flutter/material.dart';
import 'package:movix_pro/routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // Appbar section
          AppBar(
            title: Center(child: Text("Profile")),
          ),
          // Profile Editing Section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xFF252836),
                borderRadius: BorderRadius.circular(20), // corner curve
              ),
              child: Center(
                child: ListTile(
                  minLeadingWidth: 60,
                  // Profile Icon
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: IconButton(
                        onPressed: () {
                          print("Icon Tapped!");
                        },
                        icon: Icon(Icons.person)),
                  ),
                  // Name section
                  title: Text(
                    "Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // Email section
                  subtitle: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  // Edit icon section
                  trailing: IconButton(
                    onPressed: () {
                      print("Icon Tapped!!");
                    },
                    color: Colors.blueAccent,
                    icon: Icon(Icons.edit_note),
                    iconSize: 40,
                  ),
                ),
              ),
            ),
          ),
          // Account Section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xFF252836),
                borderRadius: BorderRadius.circular(20), // corner curve
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Account Tittle
                  Padding(
                    padding: const EdgeInsets.only(top: 14, left: 16),
                    child: Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Member Section
                  InkWell(
                    onTap: () {
                      print("Friend section tapped!");
                    },
                    child: ListTile(
                      minLeadingWidth: 30,
                      leading: Icon(
                        Icons.person,
                        color: Colors.blueAccent,
                        size: 30,
                      ),
                      title: Text(
                        "Friends",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          print("Icon tapped!");
                        },
                        icon: Icon(Icons.navigate_next),
                        iconSize: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  //Black Line
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 2,
                        width: 350,
                        color: Colors.black12,
                      ),
                    ),
                  ),
                  // Password change section
                  InkWell(
                    onTap: () {
                      print("Change Password section tapped!");
                    },
                    child: ListTile(
                      minLeadingWidth: 30,
                      leading: Icon(
                        Icons.lock,
                        color: Colors.blueAccent,
                        size: 30,
                      ),
                      title: Text(
                        "Change Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          print("Icon tapped!");
                        },
                        icon: Icon(Icons.navigate_next),
                        iconSize: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Genaral Section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 280,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xFF252836),
                borderRadius: BorderRadius.circular(20), // corner curve
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Genaral Tittle
                  Padding(
                    padding: const EdgeInsets.only(top: 14, left: 16),
                    child: Text(
                      "Genaral",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Notification Section
                  InkWell(
                    onTap: () {
                      print("Notification section tapped!");
                    },
                    child: ListTile(
                      minLeadingWidth: 30,
                      leading: Icon(
                        Icons.notifications,
                        color: Colors.blueAccent,
                        size: 30,
                      ),
                      title: Text(
                        "Notification",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          print("Icon tapped!");
                        },
                        icon: Icon(Icons.navigate_next),
                        iconSize: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  //Black Line
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 2,
                        width: 350,
                        color: Colors.black12,
                      ),
                    ),
                  ),
                  // Country change section
                  InkWell(
                    onTap: () {
                      print("Country section tapped!");
                    },
                    child: ListTile(
                      minLeadingWidth: 30,
                      leading: Icon(
                        Icons.flag,
                        color: Colors.blueAccent,
                        size: 30,
                      ),
                      title: Text(
                        "Country",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          print("Icon tapped!");
                        },
                        icon: Icon(Icons.navigate_next),
                        iconSize: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  //Black Line
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 2,
                        width: 350,
                        color: Colors.black12,
                      ),
                    ),
                  ),
                  // About Us section
                  InkWell(
                    onTap: () {
                      print("About Us section tapped!");
                    },
                    child: ListTile(
                      minLeadingWidth: 30,
                      leading: Icon(
                        Icons.perm_device_information,
                        color: Colors.blueAccent,
                        size: 30,
                      ),
                      title: Text(
                        "About Us",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          print("Icon tapped!");
                        },
                        icon: Icon(Icons.navigate_next),
                        iconSize: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Logout Button
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: ElevatedButton(
              onPressed: () {
                print("Logout pressed!!");
              },
              child: Text(
                "Logout",
                style: TextStyle(fontSize: 20, color: Colors.blueAccent),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 60),
                // button size
                side: BorderSide(color: Colors.blue, width: 2),
                // border color & width
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // corner round
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
