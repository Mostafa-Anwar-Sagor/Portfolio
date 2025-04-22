enum JobType {
  fullTime,
  partTime,
  remote,
}

class Experience {
  final DateTime startDate;
  final DateTime endDate;
  final String company;
  final String position;
  final JobType type;
  final List<String> responsibilities;

  Experience({
    required this.company,
    required this.position,
    required this.responsibilities,
    required this.startDate,
    required this.endDate,
    this.type = JobType.fullTime,
  });

  static final List<Experience> ksExperiences = [
    Experience(
      company: "Phitron Academy",
      position: "Junior Data Scientist Intern",
      responsibilities: [
        "Applied predictive modeling using Python (Pandas, NumPy) and R, enhancing forecasting models.",
        "Developed dynamic web apps and integrated ML models (Linear Regression, Random Forest, KNN) for data insights.",
        "Conducted data preprocessing, built data pipelines, and improved models with TensorFlow and scikit‑learn.",
      ],
      startDate: DateTime(2024, 1),
      endDate: DateTime(2024, 4),
      type: JobType.remote,
    ),
    Experience(
      company: "Load Trust AI",
      position: "Research Assistant",
      responsibilities: [
       "Collaborated with senior researchers to develop AI models focused on system trustworthiness.",
        "Designed experiments and collected evaluation metrics for trustworthiness assessment.",
      ],
      startDate: DateTime(2024, 6),
      endDate: DateTime.now(),
    ),
    Experience(
    company: "Upwork/Freelance Platform",
    position: "Data Science Consultant",
    responsibilities: [
      "Developed predictive models for client projects using Python, TensorFlow, and scikit-learn",
      "Built automated data pipelines for cleaning and processing large datasets (100GB+)",
      "Created interactive dashboards with Streamlit and Plotly for data visualization",
      "Implemented NLP solutions for text classification and sentiment analysis",
      "Optimized machine learning models for deployment in production environments",
    ],
    startDate: DateTime(2024, 6),
    endDate: DateTime.now(),
    type: JobType.remote,
  ),
    Experience(
  company: "MediAI Research Initiative", // Project-based name
  position: "Lead AI Developer (Medical Diagnostics)",
  responsibilities: [
    "Designing and implementing neural networks for automated diagnosis of [specific conditions]",
    "Developing clinician feedback integration system improving model accuracy by X%",
    "Building end-to-end pipeline from data preprocessing to prediction serving",
    "Technologies: Python, PyTorch, TensorFlow, ONNX, Docker",
    "Achievements:",
    "Reduced diagnosis time from Y hours to Z minutes in prototype testing",
    "Published/Writing paper on [specific technique] for medical AI",
    "Created reusable codebase with [X] GitHub stars/forks",
  ],
  startDate: DateTime(2024, 1),
  endDate: DateTime.now(),
  type: JobType.partTime, // Or remote if applicable
  ),
  ];
}