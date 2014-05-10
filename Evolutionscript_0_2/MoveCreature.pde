// Function to move each creature based on a certain behaviour trait
void moveCreature()
{
  for (int i = 0; i < 1000; i++)
  {
    
    // Alive creatures move
    if (creature[i].alive == true)
    {
      
      // Red Circle movement behaviour
      if (creature[i].shape == 0)
      {      
        
        // Move in a random direction each frame
        int direction = (int)random(4);

        if (direction == 0)
        {
          creature[i].x += 1;
        }
        else if (direction == 1)
        {
          creature[i].x -= 1;
        }
        else if (direction == 2)
        {
          creature[i].y += 1;
        }
        else if (direction == 3)
        {
          creature[i].y -= 1;
        }
        
        // Stay on screen
        if (creature[i].x + creature[i].size/2 > width)
        {
          creature[i].x = width - creature[i].size/2;
        } 
        else if (creature[i].x - creature[i].size/2 < 0)
        {
          creature[i].x = creature[i].size/2;
        }
        if (creature[i].y + creature[i].size/2 > height)
        {
          creature[i].y = height - creature[i].size/2;
        }
        else if (creature[i].y - creature[i].size/2 < 0)
        {
          creature[i].y = creature[i].size/2;
        }
      }
      
      // Red Square movement behaviour
      else if (creature[i].shape == 1)//Red square
      {
      }
      
      // Blue circle movement behaviour
      else if (creature[i].shape == 2)//Blue circle
      {
      }
      
      // Blue Square movement behaviour
      else if (creature[i].shape == 3)//Blue square
      {
      }
    }
  }
}
