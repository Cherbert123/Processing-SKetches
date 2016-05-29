int size = 25;
int X = 400;
int Y = 400;

void setup() {
  fill(0, 0, 0);
size(800, 800);
}
void draw() {
  background(0, 0, 0);
  fill(255, 0, 0);
  ellipse(X,Y, size, size);

  
 
  
  
  
}
  void keyPressed(){
    if (key == 119){
      Y = Y - 10;
    }
    if (key == 115){
      Y = Y + 10;
    }
    }
    
