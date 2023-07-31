import 'package:day_eighteen/model.dart';

class Model{
  String name;
  String Location;
  String image;

  Model(this.name,this.Location,this.image);
  static List<Model> travelbloglist()
  {
    return [
      Model('Saint Martin Island','Bay of Bengal','images/1s.jpg'),
      Model('Ahsan Manzil','Dhaka','images/ahsan.jpg'),
      Model('Sajek Valley','Ranggamati','images/5sajek.jpg'),
      Model('Lalbagh Fort','Dhaka','images/lalbagh.jpg'),
      Model('Rangamati','Rangamati','images/ranga.jpg'),
      Model('Bandarban','Bandarban','images/3b.jpg'),
    ];
  }

  static List<Model> mostpopularlist()
  {
    return [
      Model('Cox Bazar','Chittagon','images/2c.jpg'),
      Model('Saint Martin Island','Bay of Bengal','images/1s.jpg'),
      Model('Ahsan Manzil','Dhaka','images/ahsan.jpg'),
      Model('Sajek Valley','Ranggamati','images/5sajek.jpg'),
      Model('Lalbagh Fort','Dhaka','images/lalbagh.jpg'),
      Model('Rangamati','Rangamati','images/ranga.jpg'),
    ];
  }
}