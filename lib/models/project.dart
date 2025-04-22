class Project {
  final List<String> pngPaths;
  final String name;
  final String description;
  final String languageFramework;
  final String availablePlatforms;
  final String? features;
  final String stateManagement;
  final List<String> links;
  Project({
    required this.pngPaths,
    required this.name,
    required this.description,
    this.languageFramework = "Python · scikit-learn · XGBoost · Matplotlib · Seaborn ·NLP · ML",
    this.availablePlatforms = "Jupyter Notebook",
    this.stateManagement = " ",
    this.features,
    this.links = const [],
  }) : assert(pngPaths.isNotEmpty);
}

final List<Project> kProjects = [
  Project(
    pngPaths: [
      for (int i = 1; i < 7; i++)
        "assets/images/project-images/egovt-${i}.png",
    ],
    name: "E-Govt Services Portal",
    description:
        """Designed and developed a full‑stack simulation platform for accessing government services online. Implemented user registration, authentication, service browsing, chatbot assistance, and multilingual support. Built an admin dashboard for managing services, departments, and user orders.""",
    features: "User Authentication, Chatbot Assistance, Multilingual Support, Admin CRUD",
    links: [
      "https://github.com/Mostafa-Anwar-Sagor/E-govt-service-portal.git",
      
    ],
  ),
 Project(
  pngPaths: [
    for (int i = 1; i <= 6; i++)
      "assets/images/project-images/mnist-classifier-${i}.png",
  ],
  name: "MNIST Digit Classifier",
  description:
      """Developed an advanced neural network to classify handwritten digits from the MNIST dataset using TensorFlow and Keras. Applied LeakyReLU, Batch Normalization, and Dropout layers to improve accuracy and prevent overfitting. Performed hyperparameter tuning across layers, nodes, dropout rates, and learning rates, and visualized training metrics, confusion matrices, and performance curves for evaluation.""",
  features:
      "LeakyReLU · Batch Normalization · Dropout · Hyperparameter Tuning · Confusion Matrix Visualization",
  links: [
    "https://github.com/Mostafa-Anwar-Sagor/Advanced-Neural-Network-for-MNIST-Classification-.git", // replace with your actual repo URL
  ],
),

  Project(
  pngPaths: [
    for (int i = 1; i <= 9; i++)
      "assets/images/project-images/breast-cancer-${i}.png",
  ],
  name: "Breast Cancer Detection",
  description:
      """Built and compared multiple classification models including Logistic Regression, SVM, Decision Tree, Random Forest, Naive Bayes, and XGBoost to detect breast cancer from clinical data. Preprocessed the data using LabelEncoder and StandardScaler, used stratified train-test splits, and evaluated results using cross-validation, confusion matrix, and ROC curves.""",
  features: "Multi‑model Comparison · Feature Scaling · Cross‑Validation · Confusion Matrix · ROC Curve",
  links: [
    "https://github.com/Mostafa-Anwar-Sagor/-Breast-Cancer-Detection-.git",
  ],
),

Project(
  pngPaths: [
    for (int i = 1; i <= 3; i++)
      "assets/images/project-images/diabetes-${i}.png",
  ],
  name: "Diabetes Detection Model",
  description:
      """Developed a machine learning-based model for diabetes prediction using data from the WiDS Datathon 2020. Performed extensive data cleaning, feature engineering, and hyperparameter tuning. Compared models including XGBoost, LightGBM, Logistic Regression, and Random Forest based on AUC and accuracy. Applied cross-validation, ROC analysis, and feature importance evaluation.""",
  languageFramework: "Python · XGBoost · LightGBM · pandas · matplotlib",
  availablePlatforms: "Jupyter Notebook",
  stateManagement: "—",
  features: "Feature Engineering · Hyperparameter Tuning · ROC · AUC Optimization",
  links: [
    "https://github.com/Mostafa-Anwar-Sagor/-Diabetes-Detection-and-analysis.git",
  ],
),
  Project(
  pngPaths: [
    for (int i = 1; i <= 3; i++)
      "assets/images/project-images/aapl-stock-${i}.png",
  ],
  name: "AAPL Stock Price Prediction",
  description:
      """Developed an LSTM-based model to predict AAPL stock prices using Yahoo Finance data. 
      Applied MinMaxScaler, trained with time-series sequences, and evaluated with MSE and RMSE.""",
  languageFramework: "Python · TensorFlow · Keras · pandas · NumPy · scikit-learn · Matplotlib · Seaborn",
  availablePlatforms: "Jupyter Notebook",
  features: "LSTM · Time-Series Prediction · MSE, RMSE Evaluation · Data Preprocessing · Hyperparameter Tuning",
  links: [
    "https://github.com/Mostafa-Anwar-Sagor/STOCK-PREDICTION.git",
  ],
),
  Project(
    pngPaths: [
      for (int i = 1; i <= 3; i++)
        "assets/images/project-images/smart-farming-${i}.png",
    ],
    links: [
      "https://github.com/Mostafa-Anwar-Sagor/Smart-Farming-with-NLP-and-Weather-Reports.git"
    ],
    name: "Smart Farming with NLP and Weather Reports",
    stateManagement: " ",
    availablePlatforms: "juyter notebook, steamlit",
    description:
        """This project leverages Natural Language Processing (NLP) to analyze weather reports and offer automated farming recommendations. The system processes weather data, forecasts, and crop requirements, providing real-time farming action suggestions like irrigation and crop protection. It integrates with live weather APIs to offer actionable insights for farmers, optimizing crop health and resource usage.""",
    features: "Weather API Integration, Real-Time Data, NLP-based Recommendations, Automation",
  ),
];
