void setup(){
size(500,500);
}
void draw(){
  text("Charlie",50, 500);
  if (mousePressed){
    fill(random(255),random(255),random(255));
  ellipse(mouseX,mouseY,random(200),random(200));
  }
}
