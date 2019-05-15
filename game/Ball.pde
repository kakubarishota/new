class Ball{
  int x=-100,y=-100;
  boolean in=false;
  void start(int x1,int y1){
    x=x1;
    y=y1;
    in =true;
  }
  
  void move(){
    if(in){
      y-=5;
    }
  }
  
  void display(){
    ellipse(x,y,5,5);
  }
}
