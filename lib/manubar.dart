// import 'package:flutter/material.dart';

// class menubar extends StatelessWidget {
//   const menubar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: const Text('menubar'),
//         ),
//      body: Padding(
//        padding:  const EdgeInsets.all(8.0),
//        child: Column(
//          children: [
//            Container(
//              child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text("Menu",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//                 Positioned(
//                   top: 0,
//                   left: 0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   IconButton(
//                     onPressed: () {
                      
//                     }, icon: const Icon(Icons.settings)),
//                     IconButton(
//                     onPressed: () {
                      
//                     }, icon: const Icon(Icons.search))
//                 ],
//                 ))
//               ],
//              ),
//            ),
//            const SizedBox(height: 10,),
//            Container(
//             color: const Color.fromARGB(255, 240, 234, 234),
//             // decoration: BoxDecoration(
//             //   borderRadius: BorderRadius.all(Radius.circular(10))
//             // ),
//              child: const ListTile(
//                        leading: CircleAvatar(
//                 backgroundImage: AssetImage("assets/images/mamootty.jpeg"),
//               ),
//               title: Text("Mamootty",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//               trailing: Icon(Icons.account_circle),
//              ),
//            ),
//            const SizedBox(height: 20,),
//            ListView.builder(
//             itemBuilder: (context, index) {
//               return Container(
//               color: const Color.fromARGB(255, 240, 234, 234),
//              child: Column(
//                children: [
//                 ImageIcon(AssetImage(iconss.icon[index])),
//                  Text(iconss.name[index].toString()),
//                ],
//              ),
//               );
//             },)
           
//          ],
//        ),

//      ),
//     );
//   }
// }
// class iconsClass{
//   String icon;
//   String name;
//   iconsClass({required this.icon,required this.name});
// }

// List<iconsClass>iconss=[
//   iconsClass(
//     icon:"assets/images/icons/memories.png" ,
//     name:"Memories" 
//      ),
// iconsClass(icon: "assets/images/icons/saved.png", 
// name: "saved"
// ),
// iconsClass(icon:"assets/images/icons/groups.png" , 
// name: "Groups"
// ),
// iconsClass(
//   icon: "assets/images/icons/video.png",
//    name: "Video"
//    ),
//    iconsClass(
//     icon:"assets/images/icons/online-marketplace.png" , 
//    name: "marketplace"
//    ),
//    iconsClass(
//     icon:"assets/images/icons/friend.png",
//     name: "Friends"),
//     iconsClass(icon: 'assets/images/icons/feed.png', name: "Feeds"),
//     iconsClass(icon: "assets/images/icons/important-date.png", name: "Events")
// // ];

// import 'package:flutter/material.dart';

// class Menubar extends StatelessWidget {
//   const Menubar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Menubar'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "Menu",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.settings),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.search),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Container(
//               color: const Color.fromARGB(255, 240, 234, 234),
//               child: const ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage("assets/images/mamootty.jpeg"),
//                 ),
//                 title: Text(
//                   "Mamootty",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 trailing: Icon(Icons.account_circle),
//               ),
//             ),
//             const SizedBox(height: 20),
//            Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 childAspectRatio: 3.0, 
//                 padding: EdgeInsets.all(8.0),
//                 mainAxisSpacing: 8.0,
//                 crossAxisSpacing: 8.0,
//                 children: [
//                   for (var i = 0; i < 8; i++)
//                     Card(
//                       elevation: 2.0,
//                       child:ListTile(
//                         leading: CircleAvatar(
//                           backgroundImage: AssetImage(iconss[i].icon),
//                         ),
//                         subtitle: Text(iconss[i].name.toString()),
//                       )
//                     ),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.white24,
//               width: double.infinity,
//               child: const Center(
//                 child: Text(" seemore",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class IconsClass {
//   final String icon;
//   final String name;
//   IconsClass({required this.icon, required this.name});
// }

// List<IconsClass> iconss = [
//   IconsClass(icon: "assets/images/memories.png", name: "Memories"),
//   IconsClass(icon: "assets/images/saved.png", name: "Saved"),
//   IconsClass(icon: "assets/images/groups.png", name: "Groups"),
//   IconsClass(icon: "assets/images/video.png", name: "Video"),
//   IconsClass(icon: "assets/images/online-marketplace.png",name: "Marketplace"),
//   IconsClass(icon: "assets/images/video.png", name: "Friends"),
//   IconsClass(icon: 'assets/images/feed.png', name: "Feeds"),
//   IconsClass(icon: "assets/images/important-date.png", name: "Events"),
// ];
import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),


        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: const Color.fromARGB(255, 240, 234, 234),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: 
                 AssetImage("assets/images/mamootty.jpeg")
                ),
                title: Text(
                  "mammootty",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.account_circle),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3.0,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: iconss.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 6.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          iconss[index].icon,
                          width: 25,
                          height: 25,
                        ),
                        SizedBox(height: 8),
                        Text(
                          iconss[index].name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3), // Set border radius to 0 for square shape
    ),
  ), child: Text('See more', style: TextStyle(color: Colors.black),)
            ),
            SizedBox(height: 40),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.help),
                    ),
                    Text('Help & Support'),
                  ],
                ),
                 Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                    ),
                    Text('Settings & Privacy'),
                  ],
                ),
                 Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment. start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info),
                    ),
                    Text('Also from Meta'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class IconsClass {
  final String icon;
  final String name;
  IconsClass({required this.icon, required this.name});
}

List<IconsClass> iconss = [
  IconsClass(icon: "assets/images/memories.png", name: "Memories"),
  IconsClass(icon: "assets/images/saved.png", name: "Saved"),
  IconsClass(icon: "assets/images/groups.png", name: "Groups"),
  IconsClass(icon: "assets/images/video.png", name: "Video"),
  IconsClass(icon: "assets/images/online-marketplace.png",name: "Marketplace"),
  IconsClass(icon: "assets/images/video.png", name: "Friends"),
  IconsClass(icon: 'assets/images/feed.png', name: "Feeds"),
  IconsClass(icon: "assets/images/important-date.png", name: "Events"),
];