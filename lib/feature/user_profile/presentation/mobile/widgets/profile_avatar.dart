import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.black,
      elevation: 8.0,
      borderRadius: BorderRadius.circular(100),
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 35.0,
        child: CircleAvatar(
          backgroundImage: AssetImage('images/normal/group3.png'),
          radius: 30.0,
        ),
      ),
    );
  }
}
