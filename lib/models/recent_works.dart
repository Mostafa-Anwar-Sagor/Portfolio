class RecentWork {
  final String title;
  final String imagePath;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? appStoreUrl;
  RecentWork({
    required this.title,
    required this.imagePath,
    this.playStoreUrl,
    this.gitHubUrl,
    this.appStoreUrl,
  });

  static final List<RecentWork> works = [
    RecentWork(
        title: "Breast Cancer Detection",
        imagePath: "assets/images/project-images/1.png",
        gitHubUrl:
            "https://github.com/Mostafa-Anwar-Sagor/-Breast-Cancer-Detection-.git",
        appStoreUrl:
            "https://github.com/Mostafa-Anwar-Sagor/-Breast-Cancer-Detection-.git"),
    RecentWork(
      title: "MNIST Digit Classifier",
      imagePath: "assets/images/project-images/3.png",
      gitHubUrl:
      "https://github.com/Mostafa-Anwar-Sagor/Advanced-Neural-Network-for-MNIST-Classification-.git",
    ),
    RecentWork(
      title: "Diabetes Detection Model",
      imagePath: "assets/images/project-images/2.png",
      gitHubUrl:"https://github.com/Mostafa-Anwar-Sagor/-Diabetes-Detection-and-analysis.git"
    ),
    
    RecentWork(
      title: "AAPL Stock Price Prediction",
      imagePath: "assets/images/project-images/4.png",
      gitHubUrl:
      "https://github.com/Mostafa-Anwar-Sagor/STOCK-PREDICTION.git",
    ),
  ];
}