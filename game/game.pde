Opponent opp;
Ball ball;
Player pl;

void setup(){
  opp = new Opponent();
  ball= new Ball();
  pl =new Player();
  size(200,200);
}

void draw(){
  background(128);
  opp.hit(ball.x,ball.y);
  if(opp.isDead()){
    text("You won!",width/2,height/2);
  }else{
    opp.move();
    ball.move();
    opp.display();
    ball.display();
    pl.display();
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode ==LEFT){
      pl.move(-10);
    }else if(keyCode == RIGHT){
      pl.move(10);
    }
  }else if (key == ' '){
    ball.start(pl.x,pl.y);
  }
}
