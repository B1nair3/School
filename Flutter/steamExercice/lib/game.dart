class Game {
  String name = "";
  double price = 0;
  
  String get getName => this.name;

  set setName(String name) => this.name = name;

  get getPrice => this.price;

  set setPrice( price) => this.price = price;

  Game(this.name, this.price);


}