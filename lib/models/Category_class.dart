class category {
 final String image;
  final String name;
  category({required this.image , required this.name});
 static List<category> nws = [
  category(image: "assets/images/business.avif", name: "Business"),
  category(image: "assets/images/entertaiment.avif", name: "Entertainment"),
  category(image: "assets/images/general.avif", name: "General"),
  category(image: "assets/images/health.avif", name: "Health"),
  category(image: "assets/images/science.avif", name: "Science"),
  category(image: "assets/images/sports.avif", name: "Sports"),
  category(image: "assets/images/technology.jpeg", name: "Technology"),
];
}
