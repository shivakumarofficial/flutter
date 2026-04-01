import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    ),
  );
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Instagram", 
          style: TextStyle(color: Colors.black, fontSize: 28, fontFamily: 'cursive'),
        ),
        backgroundColor: Colors.white,
        elevation: 0, 
      ),
      body: ListView.builder(
        itemCount: 100, 
        itemBuilder: (context, index) {
          return PostWidget(index: index);
        },
      ),
    );
  }
}

class PostWidget extends StatefulWidget {
  final int index; 
  const PostWidget({super.key, required this.index});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  
  bool isLiked = false;
  int likeCount = 85;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=${widget.index}'),
          ),
          title: Text("User_${widget.index + 1}", style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        
        Image.network(
          'https://picsum.photos/seed/${widget.index}/600/400', 
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover, 
        ),
        
        Row(
          children: [
            IconButton(
              icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border),
              color: isLiked ? Colors.red : Colors.black,
              onPressed: () {
                setState(() {
                  isLiked = !isLiked; 
                  
                  if (isLiked == true) {
                    likeCount++;
                  } else {
                    likeCount--;
                  }
                });
              },
            ),
            const IconButton(icon: Icon(Icons.chat_bubble_outline), onPressed: null),
            const IconButton(icon: Icon(Icons.send), onPressed: null),
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("$likeCount likes", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ),
        
        const SizedBox(height: 5),
        const Divider(), 
      ],
    );
  }
}


