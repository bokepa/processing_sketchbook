
// main variables
int pixelsize = 4; // to pixelate all the sprites
int gridsize  = pixelsize * 7 + 5; // to pixelate movements 

Player player;
Block b1, b2, b3, b4;

ArrayList enemies = new ArrayList();
ArrayList bullets = new ArrayList();
ArrayList defenseblocks = new ArrayList();
int numDefenseBlocks;


int direction = 1;
boolean incy = false;

void setup() {
  background(0);
  noStroke();
  fill(255);
  size(500, 400);
  player = new Player();
  createDefenseBlocks();
  createEnemies();
}

void draw() {
  background(0);

  player.draw();

  for (int i = 0; i < defenseblocks.size(); i++) {
    Block b = (Block) defenseblocks.get(i);
    b.draw();
  }

  // Draw Bullets  
  for (int i = 0; i < bullets.size(); i++) {
    Bullet bullet = (Bullet) bullets.get(i);
    bullet.draw();
  }


  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = (Enemy) enemies.get(i);
    if (enemy.outside() == true) {
      direction *= (-1);
      incy = true;
      break;
   }
  }

  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = (Enemy) enemies.get(i);
    if (!enemy.alive()) {
      enemies.remove(i);
    } else {
      enemy.draw();
    }
  }

  incy = false;
  fill(255);
  textSize(32);
  
  if (enemies.size()==0) {
    text("You Win!", (width/2)-50, height/2);
  }
    
}

// Setup init routines
// Create DefenseBlocks
void createDefenseBlocks() {
  numDefenseBlocks = (int) random(5);
  for (int i = 0; i <4; i++) {
    defenseblocks.add( new Block(i));
  }
}

// Create Enemies
void createEnemies() {
  for (int i = 0; i < width/gridsize/2; i++) {
    for (int j = 0; j <= 5; j++) {
      enemies.add(new Enemy(i*gridsize, j*gridsize,i,j));
    }
  }
}