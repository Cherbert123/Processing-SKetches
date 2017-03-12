void setup(){
  
size(1000, 700);
}
void draw(){
int birdYVelocity = 0;
int gravity = 1;
int x = 50;
int y = 450;
background(80, 80, 198);
fill(100, 100, 170);  
ellipse(x, y, 60, 45);
fill(250,250,250); 
ellipse(x, y + 14, 45, 16);
birdYVelocity = birdYVelocity - gravity;
y = y - birdYVelocity;
}
void mousePressed(){
birdYVelocity = birdYVelocity + 4;
}
