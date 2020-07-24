class IntroModel {
  String imageAssetPath;
  String title;
  String content;

  IntroModel({this.imageAssetPath, this.title, this.content});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setContent(String getContent) {
    content = getContent;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getContent() {
    return content;
  }
}

List<IntroModel> getSlides() {
  List<IntroModel> slides = new List<IntroModel>();

  IntroModel introModel = new IntroModel();

  introModel.setImageAssetPath("images/beautycare.png");
  introModel.setTitle("Beauty");
  introModel.setContent("Learn more about nourishing beauty");
  slides.add(introModel);

  introModel = new IntroModel();

  introModel.setImageAssetPath("images/nails.png");
  introModel.setTitle("Nail Art");
  introModel.setContent("Beautiful work of nail art to experiment");
  slides.add(introModel);

  introModel = new IntroModel();

  introModel.setImageAssetPath("images/fashion.png");
  introModel.setTitle("Fashion");
  introModel.setContent("Get to learn more about fashion and modelling");
  slides.add(introModel);

  introModel = new IntroModel();

  return slides;
}
