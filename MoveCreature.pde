// Function to move each creature based on a certain behaviour trait
void moveCreature()
{
  for (int i = 0; i < 1000; i++)
  {

    // Alive creatures move
    if (creature[i].alive == true)
    {

      // Movement behaviour #1
      if (creature[i].behaviour == 0) //so movement is based on shape? I think we need a new random variable independent from other characteristics
      {      
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
      }

      // Red Square movement behaviour
      else if (creature[i].behaviour == 1)//Red square
      {
      }
    }
  }
}

