class CourseModel {
  String name;
  String description;
  String university;
  String noOfCourse;
  String tag1;
  String tag2;
//  String image;

  CourseModel(
      {this.name,
      this.description,
      this.noOfCourse,
      this.university,
      this.tag1,
      this.tag2,
//      this.image
      });
}

class CourseList {
  static List<CourseModel> list = [
    CourseModel(
        name: "Beauty blabla",
        description:
            "Launch your career in data science. A sweet-cource introduction to data science, develop and taught by leading professors.",
        university: "Jons Hopkins University",
        noOfCourse: "17 courses",
        tag1: "Makeup",
        tag2: "Clean-ups",
//        image: "beauty.jpg",
    ),
    CourseModel(
        name: "Hairstyle and blabla",
        description:
            "This specialization from leading researchers at university of washington introduce to you to the exciting high-demand field of machine learning ",
        university: "University of washington",
        noOfCourse: "8 courses",
        tag1: "Machine Learning",
        tag2: "Decision Tree",
//        image: "Hair1.jpg",
    ),
    CourseModel(
        name: "Therapy with blabla",
        description:
            "Drive better bussiness decision with an overview OF how big data is organised  and intepreted. Apply insight to real-world problems and question",
        university: "Us San Diego",
        noOfCourse: "10 courses",
        tag1: "Data Data",
        tag2: "Apache Spark",
//        image: "therapy.jpg",
    ),
    CourseModel(
        name: "Nutrition and blabla",
        description:
        "Launch your career in data science. A sweet-cource introduction to data science, develop and taught by leading professors.",
        university: "Jons Hopkins University",
        noOfCourse: "17 courses",
        tag1: "Data science",
        tag2: "Machine Learning",
//        image: "nutrition.jpg",
    ),
  ];
}
