String text1 = "Hello, Make this a typewriter ";
PFont font;
 
void setup() {
  size(400, 400);
  smooth();
 // font = loadFont("Arial-Black-48.vlw");
  //   textFont(font, 20);
}
 
void draw() {
 
  background(150);
  fill(255);
  text(text1, 0, 40, width, height);
  typewriteText();
 
}
 
void typewriteText(){
    if(text1.length() > 0) {
      text1 = text1.substring(0, text1.length() -1);
    }
 
}