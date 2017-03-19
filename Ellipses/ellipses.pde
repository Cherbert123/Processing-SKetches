

int size = 250;
void setup(){
size(800, 800);
 }
 void draw(){
   
 ellipse(400, 400, size, size);
 noFill();
 if (size > 0){
 size = size - 30;
 }
 }
