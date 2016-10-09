int playerX = 200;
int playerY = 380;
Car police;
Car taxi;
Car thug;
void setup(){
size(400, 400);
police = new Car(390,130,60,10, 1);
taxi = new Car(390,60,40,15, 1);
thug = new Car(10,320,30,-5, 2);
}
void draw(){
  stayordie();
if(intersects(taxi) || intersects(thug) || intersects(police) == true){
playerX = 200;
playerY = 380;
}

background(0,120,170);
if(playerY < 30){
  text( "You Made It!", 200, 200); 
  textSize(20); 
  
}
fill(60, 200, 60);    
ellipse(playerX, playerY, 20, 20);
police.display();
taxi.display();
thug.display();
police.move();
taxi.move();
thug.move();
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      playerY = playerY - 20;
      }
      else if(keyCode == DOWN)
      {
      playerY = playerY + 20;
      }
      else if(keyCode == RIGHT)
      {
      playerX = playerX + 20;
      }
      else if(keyCode == LEFT)
      {
      playerX = playerX - 20;
      }
   }
}
void stayordie(){
if(playerX < 0){
playerX = 200;
playerY = 380;

}
if(playerX > 400){
playerX = 200;
playerY = 380;

}
if(playerY > 400){
playerX = 200;
playerY = 380;

}
if(playerY < 0){
playerX = 200;
playerY = 380;

}
}


class Car{
int speed;
int Xpos;
int Ypos;
int size;
int side;
Car(int Xpos,int Ypos,int size,int speed, int side){
this.speed = speed;
this.Xpos = Xpos;
this.Ypos = Ypos;
this.size = size;
this.side = side;
}
void display() 
  {
    fill(0,255,0);
    rect(Xpos , Ypos, size, 50);
  }
 void move(){
 Xpos = Xpos - speed;
 if(Xpos < -50){
 Xpos = 390;
 }
 if(side == 2 && Xpos > 450){
 Xpos = 10;
 }
 }
  int getX(){
  return Xpos;
  } 
  int getY(){
  return Ypos;
  }
  int getSize(){
  return size;
  }
  

}
boolean intersects(Car car) {
if ((playerY > car.getY() && playerY < car.getY()+50) && (playerX > car.getX() && playerX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}



