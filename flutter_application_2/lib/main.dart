// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 56, 2, 143),
//         appBar: AppBar(
//           title: const Text("My Profile", style: TextStyle(color: Colors.black)),
//           backgroundColor: Colors.white,
//           elevation: 0.5,
//         ),
//         body: Column(
//           children: [
//             const SizedBox(height: 30),

//             CircleAvatar(
//               radius: 60,
//               backgroundImage: NetworkImage('https://picsum.photos/400'),
//             ),

//             const SizedBox(height: 15),

//             const Text("SHIVAKUMAR", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

//             const SizedBox(height: 5),

//             const Text("FLUTTER DEVELOPER", style: TextStyle(fontSize: 16, color: Colors.grey)),

//             const SizedBox(height: 20),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: const [
//                 Column(
//                   children: [
//                     Text("10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                     Text("Posts", style: TextStyle(color: Colors.grey)),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("120", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                     Text("Followers", style: TextStyle(color: Colors.grey)),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("100", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                     Text("Following", style: TextStyle(color: Colors.grey)),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }




// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//         title: Text("Image Gallery")),
//         body:
//          Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Image.network('https://picsum.photos/100', width: 100, height: 100),
//             Image.network('https://picsum.photos/101', width: 100, height: 100),
//             Image.network('https://picsum.photos/102', width: 100, height: 100),
//           ],
//         ),
//       ),
//     ),
//   );
// }



// import 'package:flutter/material.dart';


// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false, 
//       home: Scaffold(
//         backgroundColor: Colors.white, 

        
//         body: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min, 
//             children: [
              
//               CircleAvatar(
//                 radius: 50,
//                 backgroundImage: NetworkImage('https://picsum.photos/200'),
//               ),

//               SizedBox(height: 20), 

              
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Email",
//                   prefixIcon: Icon(Icons.email),
//                 ),
//               ),

//               SizedBox(height: 15),

//               TextField(
//                 obscureText: true, // Hide password
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   prefixIcon: Icon(Icons.lock),
//                 ),
//               ),

//               SizedBox(height: 20),

//               Builder(
//                 builder: (context) {
//                   return ElevatedButton(
//                     onPressed: () {
//              
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text("Login Clicked")),
//                       );
//                     },
//                     child: Text("Login"),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }




import 'package:flutter/material.dart';

void main() {
  int count = 100; 

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
 
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Count: $count",style: TextStyle(fontSize: 30),
                  ),

                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      count=count-1;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Count is $count"),
                        ),
                      );
                    },
                    child: Text("Decrease"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ),
  );
}