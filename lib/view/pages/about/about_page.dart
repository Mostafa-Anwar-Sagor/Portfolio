import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

import '../../../extensions/context_ext.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/section_title.dart';
import '../home/views/footer_view.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AnimatedNavWrapper(
            child: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 200, left: 50, right: 50),
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1024),
                child: Column(
                  children: [
                    SectionTitle(
                      backgroundText: "ABOUT",
                      foreGroundText: "A Brief History of Mostafa",
                      subTitle: "Bio",
                    ),
                    SizedBox(height: 140),
                    context.isTablet || context.isMobile
                        ? _mobileView(context)
                        : _largeView(context),
                  ],
                ),
              ),
            ),
          ),
          FooterView(),
        ],
      ),
    );
  }

  Widget _largeView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Entry.offset(
          yOffset: -400,
          delay: Duration(milliseconds: 300),
          duration: Duration(seconds: 2),
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.6,
                colors: [
                  Theme.of(context).colorScheme.secondary,
                  Colors.black,
                ],
              ),
            ),
            child: Image.asset(
              'assets/images/me.png',
            ),
          ),
        ),
        SizedBox(width: 50),
        Expanded(
          child: Entry.offset(
            yOffset: 400,
            delay: Duration(milliseconds: 300),
            duration: Duration(seconds: 2),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "A BRIEF PROFILE OF MOSTAFA",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontFamily: "Goku",
                        ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mostafa Anwar is a Data Science student at Albukhary International University (Expected Grad: Nov 2026), currently holding a 3.55 CGPA and Dean’s Honors. He’s passionate about machine learning, deep learning, NLP, and AI, with coursework in AI, ML, Data Mining, Deep Learning, NLP, and Data Visualization.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "He’s built a full‑stack Government Services Portal using Python/Flask, SQLAlchemy, MySQL, and Bootstrap; developed an advanced MNIST digit classifier with TensorFlow/Keras; and created breast cancer & diabetes detection models using scikit‑learn and XGBoost.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Active in research, Mostafa worked as a Research Assistant on Load Trust AI and is developing MediAI (medical diagnosis AI agent). He’s certified in AWS ML Foundations, Machine Learning A‑Z, and holds Dean’s Honors—bringing strong problem‑solving, adaptability, and teamwork to every project.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column _mobileView(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.6,
              colors: [
                Theme.of(context).colorScheme.secondary,
                Colors.black,
              ],
            ),
          ),
          child: Image.asset(
            'assets/images/me.png',
          ),
        ),
        SizedBox(height: 50),
        Text(
          "A BRIEF PROFILE OF MOSTAFA",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontFamily: "Goku",
                fontSize: 18,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          "Mostafa Anwar is a Data Science student at Albukhary International University (Expected Grad: Nov 2026), currently holding a 3.55 CGPA and Dean’s Honors. He’s passionate about machine learning, deep learning, NLP, and AI, with coursework in AI, ML, Data Mining, Deep Learning, NLP, and Data Visualization.",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          "He’s built a full‑stack Government Services Portal using Python/Flask, SQLAlchemy, MySQL, and Bootstrap; developed an advanced MNIST digit classifier with TensorFlow/Keras; and created breast cancer & diabetes detection models using scikit‑learn and XGBoost.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          "Active in research, Mostafa worked as a Research Assistant on Load Trust AI and is developing MediAI (medical diagnosis AI agent). He’s certified in AWS ML Foundations, Machine Learning A‑Z, and holds Dean’s Honors—bringing strong problem‑solving, adaptability, and teamwork to every project.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
