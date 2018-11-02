
// Purple Rain
// (138, 43, 226)
// (230,230,250) // background

PImage bg;
Drop d;
Drop [] drops= new Drop[500];


void setup() {
    size (300, 300);
    
    bg = loadImage("f1b.png");
    bg.resize(width,height);
    for (int i = 0; i< drops.length;i++) {
      drops[i] = new Drop();
    }
}
void draw () {

  background (bg);
  
  for (int i = 0; i < drops.length; i++) {
    
  drops[i].fall();
   drops[i].show();
  }
  
}