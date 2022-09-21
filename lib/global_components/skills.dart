// import 'package:corey_portfolio/global_components/animated_progress_indicator.dart';
// import 'package:corey_portfolio/global_layout/ui_constants.dart';
// import 'package:flutter/material.dart';

// class SkillsArchive extends StatelessWidget {
//   const SkillsArchive({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Divider(),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//           child: Text(
//             'Skills',
//             style: Theme.of(context).textTheme.subtitle2,
//           ),
//         ),
//         Row(
//           children: const [
//             Expanded(
//               child: AnimatedCircularProgressIndicator(
//                 percentage: 0.8,
//                 label: 'Flutter',
//               ),
//             ),
//             SizedBox(width: defaultPadding),
//             Expanded(
//               child: AnimatedCircularProgressIndicator(
//                 percentage: 0.72,
//                 label: 'Django',
//               ),
//             ),
//             SizedBox(width: defaultPadding),
//             Expanded(
//               child: AnimatedCircularProgressIndicator(
//                 percentage: 0.65,
//                 label: 'Firebase',
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
