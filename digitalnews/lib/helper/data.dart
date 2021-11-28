import 'package:digitalnews/Model/catagory_model.dart';

List<CategoryMOdel> getCategories() {
  List<CategoryMOdel> categories = List<CategoryMOdel>();
  CategoryMOdel categorymodel = CategoryMOdel();
  //1
  categorymodel.categoryName = "Business";
  categorymodel.imageUrl =
      "https://media.istockphoto.com/photos/futuristic-office-picture-id1187179171";
  categories.add(categorymodel);
  //2
  categorymodel = CategoryMOdel();
  categorymodel.categoryName = "Education";
  categorymodel.imageUrl =
      "https://media.istockphoto.com/photos/teacher-desk-full-of-books-against-a-blackboard-background-whit-copy-picture-id1251272960";
  categories.add(categorymodel);
  //3
  categorymodel = CategoryMOdel();
  categorymodel.categoryName = "Entairnment";
  categorymodel.imageUrl =
      "https://media.istockphoto.com/photos/media-concept-smart-tv-picture-id503685712";

  //4
  categorymodel = CategoryMOdel();
  categorymodel.categoryName = "Technology";
  categorymodel.imageUrl =
      "https://media.istockphoto.com/photos/businessman-trading-online-stock-market-on-teblet-screen-digital-picture-id1311598658";

  categories.add(categorymodel);
  //5
  categorymodel = CategoryMOdel();
  categorymodel.categoryName = "Politicals";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1534293230397-c067fc201ab8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";
  categories.add(categorymodel);
  //6
  categorymodel = CategoryMOdel();
  categorymodel.categoryName = "Sports";
  categorymodel.imageUrl =
      "https://media.istockphoto.com/photos/full-stadium-and-neoned-colorful-flashlights-background-picture-id1276444914";
  categories.add(categorymodel);
  //7
  categorymodel = CategoryMOdel();
  categorymodel.categoryName = "Tenders";
  categorymodel.imageUrl =
      "https://media.istockphoto.com/photos/business-pain-point-and-marketing-conceptsplan-and-strategy-picture-id1308546825";
  categories.add(categorymodel);
  return categories;
}
