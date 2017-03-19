
int birdYVelocity = 200;
int gravity = 10;
int x = 50;
int y = 450;
void setup(){
  
size(1000, 700);
}
void draw(){

background(80, 80, 198);
fill(100, 100, 170);  
ellipse(x, y, 60, 45);
fill(250,250,250); 
ellipse(x, y + 14, 45, 16);
y += gravity;

}
void mousePressed(){
y -= birdYVelocity;
}
