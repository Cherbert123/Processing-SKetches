PImage pictureOfRecord;
import ddf.minim.*;
Minim minim;        
  AudioPlayer song;  
int Angle = 0;
void setup() {
  minim = new Minim(this);
song = minim.loadFile("Fly!.wav", 512);  
pictureOfRecord= loadImage("pictureOfRecord.jpeg");
size(pictureOfRecord.width, pictureOfRecord.height);

}
void draw() {
  if(mousePressed){
song.play();
 rotateImage(pictureOfRecord, 5); 
 Angle = Angle + 5;
  } else{
  song.pause();
  }
  rotateImage(pictureOfRecord, Angle);
image(pictureOfRecord, 0, 0);

}
void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}


