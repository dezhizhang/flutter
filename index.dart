
class Rect{
  num height;
  num width;
  Rect(this.width,this.height);
  get area{
    return this.width * this.height;
  }
  
}

main() {
  Rect r = new Rect(10, 10);
  print(r.area);
  
}