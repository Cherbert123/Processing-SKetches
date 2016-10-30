Button fireButton = new Button(18, 50, 500, "launch");
PImage imgPump;
PImage imgBack;
PImage scarecrow;
int pumpX = 20;
int pumpY = 806;
double vX = 20;
double vY = -8;
int mode = 1;
static final int ready = 1;
static final int firing = 0;
static final int Grav = 3;
void setup() {
  //BackGround
imgBack = loadImage("FarmScene.png");
imgPump = loadImage("Pumpkin.png");
scarecrow = loadImage("Scarey.png");
size(1497, 956);



}
void draw() {
 background(imgBack);


if(mode == firing){
 
 pumpX += vX;
  pumpY += vY;
  vY += Grav/10.0;
} else if (mode == ready){
fireButton.setVisible(true);


}

image(imgPump, pumpX, pumpY);

if(pumpY > 956){
pumpX = 20;
pumpY = 806;
vX = 20;
vY = -8;
mode = ready;
}
}

void buttonActionPerformed(Button button){
if (button == fireButton){
mode = firing;
  
}



}
