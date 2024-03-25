import 'package:flutter/material.dart';

// class NotificationPage extends StatelessWidget {
//   final List<String> notifications = [
//     'srk Smith liked your post.',
//     'vijay commented on your photo.',
//     'You have a new friend request.',
//     'surya sent you a message.',
//     'Event "Birthday Party" is tomorrow.',
      
    
//     'You have a new friend request.',
//     'surya sent you a message.',
//     'Event "Birthday Party" is tomorrow.',
//      'srk Smith liked your post.',
//     'vijay commented on your photo.',
//     'You have a new friend request.',
//     'surya sent you a message.',
//     'Event "Birthday Party" is tomorrow.',
//     'surya sent you a message.',
//     'Event "Birthday Party" is tomorrow.',
//   ];
//   final List<String> notiImage = [
//     'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
//     'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
//     'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
//     'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
//     'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
//     'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
//     'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
//     'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.jEKmYi2ojP6lsp8AqmlLzwHaHj?w=1000&h=1020&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.S_b3v8Wf5LtjHiszY9HwhQHaHv?w=512&h=598&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
//      'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
//     'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
//     'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
//     'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.jEKmYi2ojP6lsp8AqmlLzwHaHj?w=1000&h=1020&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.S_b3v8Wf5LtjHiszY9HwhQHaHv?w=512&h=598&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
//     'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
//     'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
//     'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
//     'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
//     'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//          actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.search),
//             ),]
//       ),
//       body: Row(
//         children: [
          
//           ListView.builder(
//             itemCount: notifications.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: CircleAvatar(
//                  child: ClipRRect(
//             borderRadius: BorderRadius.circular(20), 
//             child: Image.network(
//               notiImage[index],
//               width: 40, 
//               height: 40,
//               fit: BoxFit.cover, 
//             ),
//           ),
//                 ),
                
//                 title: Text(notifications[index]),
//                 onTap: () {
                  
//                   print('Notification tapped: ${notifications[index]}');
//                 },
                
//               );   
//             },  
//           ), 
//         ],
//       ),
//     );
//   }
// }


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(notifications[index].imageUrl),
            ),
            title: Text(notifications[index].message),
            subtitle: Text(notifications[index].day),
            trailing: Icon(Icons.more_horiz),
          );
        },
      ),
    );
  }
}

class Notification {
  String imageUrl;
  String message;
  String day;

  Notification({
    required this.message,
    required this.imageUrl,
    required this.day,
  });
}

List<Notification> notifications = [
  Notification(
    message: "prithviraj shared a post",
    imageUrl: 'assets/images/prithviraj.jpeg',
    day: "yesterday",
  ),
  Notification(
    message: "mamootty liked your post",
    imageUrl: "assets/images/mamootty.jpeg",
    day: "today",
  ),
   Notification(
    message: "mohanlal mentioned you in a story ",
    imageUrl: 'assets/images/mohanlal.jpeg',
    day: "just now",
  ),
   Notification(
    message: "Dulqar salman sent you a voice messege",
    imageUrl: 'assets/images/dq.jpeg',
    day: "5 minuts ago ",
  ),
  Notification(
    message: "deleep missed a voice call",
    imageUrl: 'assets/images/deleeep.jpeg',
    day: "5 hours ago",
  ),
  Notification(
    message: "meta tag you in a post",
    imageUrl: 'assets/images/meta.png',
    day: "10 minuts ago",
  ),
  Notification(
    message: "prithviraj shared a post",
    imageUrl: 'assets/images/prithviraj.jpeg',
    day: "yesterday",
  ),
  Notification(
    message: "mamootty liked your post",
    imageUrl: "assets/images/mamootty.jpeg",
    day: "today",
  ),
   Notification(
    message: "mohanlal mentioned you in a story ",
    imageUrl: 'assets/images/mohanlal.jpeg',
    day: "just now",
  ),
   Notification(
    message: "Dulqar salman sent you a voice messege",
    imageUrl: 'assets/images/dq.jpeg',
    day: "5 minuts ago ",
  ),
  Notification(
    message: "deleep missed a voice call",
    imageUrl: 'assets/images/deleeep.jpeg',
    day: "5 hours ago",
  ),
  Notification(
    message: "meta tag you in a post",
    imageUrl: 'assets/images/meta.png',
    day: "10 minuts ago",
  )
];
