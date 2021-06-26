/**
 * http://www.peachpit.com/articles/article.aspx?p=2468332&seqNum=5
 * 
 * 
 * 
*/

class Location {
  final int x;
  final int y;
  const Location(this.x, this.y);
}

main() {
  const Location gate = const Location(400, 200);
  const Location tower = const Location(500, 200);
  const Location tube = const Location(400, 200);

  //false – different values results on a new object
  print(gate == tower);

  //true – same class & values results in the same reference
  print(gate == tube);

  Location runway = new Location(400, 200);
  Location tarmac = new Location(500, 200);
  Location field = new Location(400, 200);
  print(runway == tarmac); //false – new keyword results on a new object
  print(runway == field); //false – new keyword results on a new object
}