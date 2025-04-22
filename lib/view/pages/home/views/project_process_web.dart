import 'package:auto_size_text/auto_size_text.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants.dart';
import '../../../../extensions/context_ext.dart';
import '../../../widgets/overlapping_text.dart';
import '../../../widgets/section_title.dart';

class ProjectProcessView extends StatelessWidget {
  const ProjectProcessView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SectionTitle(
            backgroundText: "PROCESS",
            foreGroundText: "PROJECT PROCESS",
            subTitle: "LET'S TALK ABOUT YOUR PROJECT",
          ),
          SizedBox(height: 200),
_ProcessCard(
  number: "01",
  title: "Problem Definition & Data Gathering",
  description:
      "Collaborate to clarify business objectives, define success metrics, and identify relevant data sources to ensure the project aligns with your goals.",
),
_ProcessCard(
  isReversed: true,
  number: "02",
  title: "Data Preparation & Feature Engineering",
  description:
      "Ingest and clean raw datasets—handling missing values, outliers, and normalization—and engineer high‑value features that drive model performance.",
),
_ProcessCard(
  number: "03",
  title: "Model Development & Evaluation",
  description:
      "Train and fine‑tune machine learning algorithms; perform hyperparameter optimization and validate models using cross‑validation and business‑aligned metrics.",
),
_ProcessCard(
  isReversed: true,
  number: "04",
  title: "Deployment & Continuous Monitoring",
  description:
      "Deploy your models via automated CI/CD pipelines, monitor performance and data drift in real time, and iterate based on feedback for sustained accuracy.",
),
        ],
      ),
    );
  }
}

class _ProcessCard extends StatelessWidget {
  const _ProcessCard({
    this.isReversed = false,
    required this.number,
    required this.title,
    required this.description,
  });
  final bool isReversed;
  final String number;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final children = context.isMobile
        ? [
            Entry.opacity(
              duration: Constants.smallDelay,
              // delay: Constants.smallDelay,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Entry.opacity(
                    duration: Constants.smallDelay,
                    delay: Constants.smallDelay,
                    child: Transform.scale(
                      scale: 0.8,
                      child: Container(
                        alignment: Alignment.center,
                        child: OverlappingText(
                          text: number,
                          offset: Offset(20, 10),
                        ),
                      ),
                    ),
                  ),
                  AutoSizeText(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(fontSize: 38),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(height: 1.6),
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    color: Colors.white.withOpacity(0.15),
                    height: 100,
                  ),
                ],
              ),
            ),
          ]
        : [
            Expanded(
              flex: 2,
              child: Entry.opacity(
                duration: Constants.smallDelay,
                delay: Constants.smallDelay,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(height: 1.6, fontSize: 48),
                    ),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(height: 1.6),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.15),
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Entry.opacity(
                duration: Constants.smallDelay,
                delay: Constants.smallDelay,
                child: Container(
                  height: 140,
                  alignment:
                      isReversed ? Alignment.centerLeft : Alignment.centerRight,
                  child: OverlappingText(
                    text: number,
                    offset: Offset(20, 10),
                  ),
                ),
              ),
            )
          ];
    return Entry.opacity(
      duration: Constants.smallDelay,
      child: Container(
        constraints: BoxConstraints(maxWidth: 1600),
        padding: EdgeInsets.symmetric(horizontal: context.isMobile ? 20 : 100),
        child: context.isMobile
            ? LayoutBuilder(builder: (context, constraints) {
                return Container(
                  constraints: constraints,
                  alignment: Alignment.center,
                  child: Column(
                    children: children,
                  ),
                );
              })
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isReversed ? children.reversed.toList() : children,
              ),
      ),
    );
  }
}
