class Opponent{
  int x=100,y=10;
  int v=int(random(3));
  boolean Dead=false;
  void move(){
    x+=v;
    if(x<0){
      v=-v;
    }
    if(x>width){
      v=-v;
    }
  }
  
  void hit(int hx,int hy){
    if(dist(hx,hy,x,y)<=100){
      background(255,0,0);
      Dead=true;
    }
  }
  boolean isDead(){
    return Dead;
  }
  void display(){
    rect(x,y,20,20);
  }
}
