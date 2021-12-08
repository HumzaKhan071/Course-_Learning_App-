class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course({
    required this.author,
    required this.authorImg,
    required this.title,
    required this.imageUrl,
  });

  static List<Course> generateCourses() {
    return [
      Course(
          author: "Luma Lanari",
          authorImg: "assets/icons/avatar1.png",
          title: "Plant",
          imageUrl: "assets/images/course1.jpg"),
           Course(
          author: "Daniel Dia",
          authorImg: "assets/icons/avatar2.png",
          title: "Mushroom",
          imageUrl: "assets/images/course2.jpg"),
    ];
  }
}
