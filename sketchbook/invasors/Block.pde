
// Bloks to cover
class Block extends SpaceShip{
  Block(int i) {
    i++;
    y = height*3/4;
    x = width *i/4;
    r=240;
    g=240;
    b=240; 
    sprite    = new String[5];
    sprite[0] = "111111111";
    sprite[1] = "111111111";
    sprite[2] = "111111111";
    sprite[3] = "111111111";
    sprite[4] = "111111111";
    
  }
  
}