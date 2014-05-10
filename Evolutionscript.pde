// Set screen size
int screenX = 800;
int screenY = 800;

// Set maximum number of creatures that can be created
int creatureNumber = 1000;

// global speed
int speed = 1;


//Random sizegen;

float norm;
float sd = 3.2;
float mean = 15;

//colour 
int r, g, b;

// Create a number of obects from the creature class to the value of creatureNumber
  Creature[] creature = new Creature[creatureNumber];

void setup()
{ 
  // Sets rectangle mode to the same as ellipse mode (CENTER)
  rectMode(CENTER);
  
  // Screen size using values chosen above
  size(screenX, screenY);
  
  // Function that creates a number of alive creatures from the total number of creatures
  initCreature();
}

void draw()
{
  // Background is white
  background(255);
  
  // Functions to update and move creatures
  updateCreature();
  moveCreature();
  for (int i = 0; i < creatureNumber; i++)
  {
    creature[i].collide();
    creature[i].stay();
  }
 
}
