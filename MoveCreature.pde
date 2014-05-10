// Function to move each creature based on a certain behaviour trait
void moveCreature()
{
  for (int i = 0; i < 1000; i++)
  {

    // Alive creatures move
    if (creature[i].alive == true)
    {

      // Movement behaviour #1
      if (creature[i].behaviour == 0) 
      {      
        // Choose a random direction
        int direction = (int)random(4);

        // Go East
        if (direction == 0)
        {
          creature[i].x += speed;
        }
        
        // Go West
        else if (direction == 1)
        {
          creature[i].x -= speed;
        }
        
        // Go South
        else if (direction == 2)
        {
          creature[i].y += speed;
        }
        
        // Go North
        else if (direction == 3)
        {
          creature[i].y -= speed;
        }
      }

      // Movement behaviour #2
      else if (creature[i].behaviour == 1)
      {
        
      }
    }
  }
}

