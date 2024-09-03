class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// #############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/1.jpg',
      title: 'English Learning App',
      subtitle:
          'This is a comprehensive English learning app for practicing a advanced english and spoken english',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohatech.com'),
  ProjectUtils(
      image: 'assets/projects/02.jpg',
      title: 'English Dictionary App',
      subtitle:
          'This is a comprehensive English learning app for practicing a advanced english and spoken english',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohatech.com',
      iosLink: 'https://apps.apple.com/us/app/eduza-english-dictionary.com'),
  ProjectUtils(
      image: 'assets/projects/03.jpg',
      title: 'Pocket Dictionary',
      subtitle:
          'This is a comprehensive English learning app for practicing a advanced english and spoken english',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohatech.com'),
  ProjectUtils(
      image: 'assets/projects/04.jpg',
      title: 'Tasbeeth Counter',
      subtitle:
          'This is a comprehensive English learning app for practicing a advanced english and spoken english',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohatech.com'),
  ProjectUtils(
      image: 'assets/projects/05.jpg',
      title: 'Todo App',
      subtitle:
          'This is a comprehensive English learning app for practicing a advanced english and spoken english',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohatech.com'),
  ProjectUtils(
      image: 'assets/projects/06.jpg',
      title: 'Todo App',
      subtitle:
          'This is a comprehensive English learning app for practicing a advanced english and spoken english',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohatech.com'),
];

// ############
//WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/w01.jpg',
      title: 'English Brain Craft',
      subtitle: 'This is an English learning app for students to learn English',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohatech.com',
      iosLink: 'https://apps.apple.com/us/app/eduza-english-dictionary.com'),
  ProjectUtils(
      image: 'assets/projects/w02.jpg',
      title: 'Online shop web',
      subtitle: 'This is an English learning app for students to learn English',
      webLink: 'https://www.elo.best'),
  ProjectUtils(
      image: 'assets/projects/w03.jpg',
      title: 'Advertisment Management System',
      subtitle: 'This is an English learning app for students to learn English',
      webLink: 'https://www.elo.best'),
];
