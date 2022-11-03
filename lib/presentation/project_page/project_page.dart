import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({
    required this.projectId,
    super.key,
  });
  final String projectId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('sUp'),
      ),
    );
  }
}
