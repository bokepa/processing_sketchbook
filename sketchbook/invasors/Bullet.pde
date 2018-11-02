
class Bullet {
  int x, y;
  int r, g, b;

  Bullet(int xpos, int ypos) {
    x = xpos + gridsize/2 - 4;
    y = ypos;
    r =160; 
    g=160; 
    b=0;
  }

  void draw() {
    fill(r, g, b);
    rect(x, y, pixelsize, pixelsize);
    y -= pixelsize;
  }
}