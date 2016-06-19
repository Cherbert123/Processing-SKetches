float HideX = random(700);
float HideY = random(700);

PImage creeper;
void setup(){
creeper = loadImage("creeper.png");
size(800, 800);
creeper.resize(200, 200);
PImage minecraft = loadImage("150px-Sugar_Canes.png");
minecraft.resize(800, 800);
background(minecraft);
}void draw(){
image(creeper, HideX, HideY);
if (mousePressed){
  if(isNearY((int)HideY, mouseY) && isNearX((int)HideX, mouseX)){
   
  fill(0, 255, 0);
ellipse(mouseX, mouseY, 20, 20);
    
}
  else{
fill(255, 0, 0);
ellipse(mouseX, mouseY, 20, 20);
}
}
}
boolean isNearY(int a, int b) {
      if (abs(a - b) < 50)
          return true;
    else
       return false;
}
boolean isNearX(int a, int b) {
      if (abs(a - b) < 50)
          return true;
    else
       return false;
}

