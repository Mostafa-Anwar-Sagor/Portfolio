import 'package:flutter/material.dart';

class Constants {
  static const Duration smallDelay = Duration(milliseconds: 1500);
  static const Duration mediumDelay = Duration(milliseconds: 3000);

  static const mediumAnimationSpeed = Duration(milliseconds: 400);

  static const email = 'mostafa.anwar2181@gmail.com';
  static const phoneNumber = '+60 1156540179';
  static const address = 'https://github.com/Mostafa-Anwar-Sagor';

  static const linkedInUrl = 'https://www.linkedin.com/in/mostafa-anwar-3ab665350/';
  static const xUrl = 'https://www.linkedin.com/in/mostafa-anwar-3ab665350/';
  static const githubUrl = 'https://github.com/Mostafa-Anwar-Sagor';
  static const resumeURl =
      'https://drive.google.com/file/d/1M29k-1R59xgPYVRyj04lMxkZkxiodxby/view?usp=sharing';

  static outLinedText(BuildContext context, {double strokeWidth = 1}) {
    return Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Theme.of(context).colorScheme.secondary;
  }
}
