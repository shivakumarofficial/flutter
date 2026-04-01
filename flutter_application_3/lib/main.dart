// import 'package:flutter/material.dart';
// void main() {
//  runApp(
//  const MaterialApp(
//  debugShowCheckedModeBanner: false,
//  home: FeedScreen(),
//  ),
//  );
// }

// class FeedScreen extends StatelessWidget {
//  const FeedScreen({super.key});
//  @override
//  Widget build(BuildContext context) {
//  return Scaffold(
//  backgroundColor: Colors.white,
//  appBar: AppBar(
//  title: const Text("InstaFeed", style: TextStyle(color: Colors.black, fontWeight:
// FontWeight.bold)),
//  backgroundColor: Colors.white,
//  elevation: 1,
//  centerTitle: true,
//  ),
 

//  body: ListView.builder(
//  itemCount: 100,
//  itemBuilder: (context, index) {
//  return PostWidget(index: index);
//  },
//  ),
//  );
//  }
// }

// class PostWidget extends StatelessWidget {
//  final int index;
 
//  const PostWidget({super.key, required this.index});
//  @override
//  Widget build(BuildContext context) {
//  return Column(
//  crossAxisAlignment: CrossAxisAlignment.start,
//  children: [
 
 
//  ListTile(
//  leading: CircleAvatar(
 
//  backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=$index'),
//  ),
//  title: Text("User_${index + 1}", style: const TextStyle(fontWeight: FontWeight.bold)),
//  ),
 
 
//  Image.network(
//  'https://picsum.photos/seed/$index/600/400',
//  height: 300,
//  width: double.infinity,
//  fit: BoxFit.cover, 
//  ),
 
 
//  const Row(
//  children: [
//  IconButton(icon: Icon(Icons.favorite_border), onPressed: null),
//  IconButton(icon: Icon(Icons.chat_bubble_outline), onPressed: null),
//  IconButton(icon: Icon(Icons.send), onPressed: null),
//  ],
//  ),

//  const Padding(
//  padding: EdgeInsets.symmetric(horizontal: 16.0),
//  child: Text(
//  "Learning Flutter is amazing! #Day2",
//  style: TextStyle(fontSize: 15),
//  ),
//  ),
 
//  const SizedBox(height: 10), 
//  const Divider(),
//  ],
//  );
//  }
// }





import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Card"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/200',
              ),
            ),

            SizedBox(height: 10),

            
            Text(
              "Shivakumar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            
            Text(
              "Flutter Beginner",
              style: TextStyle(color: Colors.grey),
            ),

            SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Follow"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Message"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MenuPage(),
//     );
//   }
// }


// class MenuPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

      
//       appBar: AppBar(
//         title: Text("MyFlutter App"),
//         backgroundColor: Colors.blue,

//         actions: [
//        TextButton(
//             onPressed: () {
//               print("Home clicked");
//             },
//             style: TextButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             child: Text("Home"),
//           ),

//           TextButton(
//             onPressed: () {
//               print("About clicked");
//             },
//             style: TextButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             child: Text("About"),
//           ),

//           TextButton(
//             onPressed: () {
//               print("Service clicked");
//             },
//             style: TextButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             child: Text("Service"),
//           ),

//           TextButton(
//             onPressed: () {
//               print("Contact clicked");
//             },
//             style: TextButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             child: Text("Contact"),
//           ),
//         ],
//       ),

      
//       body: Center(
//         child: Text(
//           "Welcome to My App",
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }