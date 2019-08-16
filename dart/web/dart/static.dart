import 'dart:math';

class Point {
  int x;
  int y;

  Point(int x, int y){
    this.x = x;
    this.y = y;
  }

  // Point(this.x, this.y);

  static getDistance(Point a, Point b){
    var dx = a.x - b.x;
    var dy = a.y - b.y;

    print('dx ${dx}');
    print('dy ${dy}');

    return sqrt(dx * dx + dy * dy);
  }

}