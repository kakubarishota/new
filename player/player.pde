class Player {
  int size = 100;
  int x = width/2 - size/2,y = height - 50;
  void move() {
    if( keyPressed ) {
      if( keyCode == RIGHT ) {
        if( x + size  <= width ) {
          x += 3;
        }  
      }
      else if(keyCode  == LEFT ) {
        if( x >= 0 ) {
          x -= 3;
        }  
      }
    }
  }  
  void display() {
    rect(x,y,size,20);
  }
}  

Player p1;
void setup() {
  size(300,500);
  p1 = new Player();
}

void draw() {
  background(205);
  p1.display();
  p1.move();
}  
