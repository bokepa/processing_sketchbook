class Enemy extends SpaceShip {
  int enemyType; // 1. Venusians, 2. MArtians 3. Mercurians
  
  Enemy(int xpos, int ypos, int i, int j) {
    x = xpos;
    y = ypos;
    // Colors depending on the row
    print(i); print(",");print(j);
    if (j==0) {r = 0; g = 160; b= 0;}
    if (j==1) {r=  160; g= 0; b = 0;}
    if (j==2) {r= 0; g = 0; b = 160;}
    if (j==3) {r= 56; g = 0; b = 160;}
    if (j==4) {r= 0; g = 65; b = 160; } 
    if (j==5) {r= 56; g = 56; b = 60;}
    sprite    = new String[5];
    sprite[0] = "1011101";
    sprite[1] = "0101010";
    sprite[2] = "1111111";
    sprite[3] = "0101010";
    sprite[4] = "1000001";
  }

  void updateObj() {
    if (frameCount%30 == 0) x += direction * gridsize;
    if (incy == true) y += gridsize / 2;
  }

  boolean alive() {
    for (int i = 0; i < bullets.size(); i++) {
      Bullet bullet = (Bullet) bullets.get(i);
      if (bullet.x > x && bullet.x < x + 7 * pixelsize + 5 && bullet.y > y && bullet.y < y + 5 * pixelsize) {
        bullets.remove(i);
        return false;
      }
    }

    return true;
  }

  boolean outside() {
    if (x + (direction*gridsize) < 0 || x + (direction*gridsize) > width - gridsize) {
      return true;
    } else {
      return false;
    }
  }
}