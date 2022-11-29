// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_1/widgets/colors.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:like_button/like_button.dart';
// import 'package:line_icons/line_icons.dart';

// class ViewPost extends StatefulWidget {
//   const ViewPost({super.key});


//   @override
//   State<ViewPost> createState() => _ViewPostState();
// }

// class _ViewPostState extends State<ViewPost> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: Container(
//         width: double.infinity,
//         height: 400,
//         color: Color.fromARGB(255, 135, 168, 225),
//         child: Column(
//           children: [
//             Container(
//               height: 50,
//               width: double.infinity,
//               color: Color.fromARGB(255, 186, 202, 199),
//             ),
//             Container(
//               height: 300,
//               width: double.infinity,
//               color: Color.fromARGB(255, 200, 238, 230),
//             ),
//             Container(
//               height: 50,
//               width: double.infinity,
//               color: Color.fromARGB(255, 245, 246, 247),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   LikeButton(
//                     likeCount: 50,
//                   ),
//                   LikeButton(
//                     likeBuilder: (isLiked) => Icon(FontAwesomeIcons.comment),
//                     likeCount: 3,
//                   ),
//                   LikeButton(
//                     likeBuilder: (isLiked) => Icon(
//                       LineIcons.share,
//                     ),
//                     likeCount: 50,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
