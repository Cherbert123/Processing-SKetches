int x = 400;
int y = 400;
void setup(){
  background(0,0,34);
size(800, 800);
}
void draw(){

 background(0,0,34);


fill(random(255), 0, 0);
ellipse(x, y + 130, 90,90);
fill(248, 128, 0);
ellipse(x, y + 115, 70,70);
fill(255, 153, 0);
ellipse(x, y + 95, 35,35);
fill(100, 100, 100);
triangle(x,y + 10,x + 50, y + 100, x - 50, y + 100);
//Space Stuff
fill(240, 240, 240);
ellipse(754, 84, 60, 60);
fill(0,0,34);
ellipse(745, 83, 60, 60);
fill(255, 255, 255);
ellipse(345, 98, 30, 30);
ellipse(239, 468, 30, 30);
ellipse(495, 23, 30, 30);
ellipse(567, 234, 30, 30);
ellipse(574, 693, 30, 30);
ellipse(33, 98, 30, 30);
y = y - 15;
 
}
