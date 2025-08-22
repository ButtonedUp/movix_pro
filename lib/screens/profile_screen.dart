import 'package:flutter/material.dart';
import 'package:movix_pro/routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
            child: Column(
              children: [
                // Appbar section
                AppBar(
                  title: Center(child: Text("Profile")),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                SizedBox(height: 10),
                // Profile Editing Section
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF252836),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: ListTile(
                      minLeadingWidth: 60,
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 24,
                        child: IconButton(
                            onPressed: () {
                              print("Icon Tapped!");
                            },
                            icon: Icon(Icons.person)),
                      ),
                      title: Text(
                        "Name",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Email",
                        style: TextStyle(fontSize: 18),
                      ),
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
                SizedBox(height: 16),
                // Account Section
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF252836),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      InkWell(
                        onTap: () {
                          print("Friend section tapped!");
                        },
                        child: ListTile(
                          minLeadingWidth: 30,
                          leading: Icon(Icons.person, color: Colors.blueAccent, size: 30),
                          title: Text(
                            "Friends",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      Divider(color: Colors.black12, thickness: 2, indent: 16, endIndent: 16),
                      InkWell(
                        onTap: () {
                          print("Change Password section tapped!");
                        },
                        child: ListTile(
                          minLeadingWidth: 30,
                          leading: Icon(Icons.lock, color: Colors.blueAccent, size: 30),
                          title: Text(
                            "Change Password",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                SizedBox(height: 16),
                // General Section
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF252836),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14, left: 16),
                        child: Text(
                          "General",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Notification section tapped!");
                        },
                        child: ListTile(
                          minLeadingWidth: 30,
                          leading: Icon(Icons.notifications, color: Colors.blueAccent, size: 30),
                          title: Text(
                            "Notification",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      Divider(color: Colors.black12, thickness: 2, indent: 16, endIndent: 16),
                      InkWell(
                        onTap: () {
                          print("Country section tapped!");
                        },
                        child: ListTile(
                          minLeadingWidth: 30,
                          leading: Icon(Icons.flag, color: Colors.blueAccent, size: 30),
                          title: Text(
                            "Country",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      Divider(color: Colors.black12, thickness: 2, indent: 16, endIndent: 16),
                      InkWell(
                        onTap: () {
                          print("About Us section tapped!");
                        },
                        child: ListTile(
                          minLeadingWidth: 30,
                          leading: Icon(Icons.perm_device_information, color: Colors.blueAccent, size: 30),
                          title: Text(
                            "About Us",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                SizedBox(height: 30),
                // Logout Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signin);
                    print("Logout pressed!!");
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 30), // bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
