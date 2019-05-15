class Player{
  int x=20,y=180;
  
  void move(int dx){
    x+=dx;
  }
  
  void display(){
    ellipse(x,y,10,10);
  }
}
