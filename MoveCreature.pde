// Function to move each creature based on a certain behaviour trait
void moveCreature()
{
  for (int i = 0; i < creatureNumber; i++)
  {
    for (int j = 0; j < creatureNumber; j++)
    {

      // Alive creatures move
      if (creature[i].alive == true)
      {

        // 1. Movement behaviour #1 - Random (always move in a random direction)
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

        // 2. Movement behaviour #2 - Pursuant (If an object is close, follow it, otherwise move in a random direction)
        else if (creature[i].behaviour == 1)
        {
          // Calculate proximity - variables need to be edited so that they call two different objects close to each other
          // Also, needs to check for closest object which I'm sure this doesn't do
          float minDistance = 100;
          float xDist = creature[i].x - creature[j].x;
          float yDist = creature[i].y - creature[j].y;
          float dist = sqrt(xDist*xDist + yDist*yDist);
          if (dist < minDistance && creature[j].alive == true && creature[i].alive == true && creature[j].id != creature[i].id)
          {
            // Follow the object!!!
          }
          else 
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
        }

        // 3. Movement Behaviour #3 - Avoidant (If an object is close, avoid it, otherwise move in a random direction)
        else if (creature[i].behaviour == 2)
        {
          // Calculate proximity - variables need to be edited so that they call two different objects close to each other
          // Also, needs to check for closest object which I'm sure this doesn't do
          float minDistance = 100;
          float xDist = creature[i].x - creature[j].x;
          float yDist = creature[i].y - creature[j].y;
          float dist = sqrt(xDist*xDist + yDist*yDist);
          if (dist < minDistance && creature[j].alive == true && creature[i].alive == true && creature[j].id != creature[i].id)
          {
            // Avoid the object!!!
          }
          else 
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
        }

        // 4. Movement Behaviour #4 - Smart pursuant-avoidant (Pursue smaller close objects, avoid larger close objects, otherwise move in a random direction)
        else if (creature[i].behaviour == 3)
        {
          // Calculate proximity - variables need to be edited so that they call two different objects close to each other
          // Also, needs to check for closest object which I'm sure this doesn't do
          float minDistance = 100;
          float xDist = x - creature[i].x;
          float yDist = y - creature[i].y;
          float dist = sqrt(xDist*xDist + yDist*yDist);
          if (dist < minDistance && creature[i].alive == true && alive == true && creature[i].id != id)
          {
            if (size > creature[i].size)
            {
              // Follow the object!!!
            }
            else if (size < creature[i].size)
            {
              // Avoid the object!!!
            }
            else
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
          }
          else 
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
        }
      }
    }
  }
}

//// Move in a random direction
//void randomMove () 
//{
//  // Choose a random direction
//  int direction = (int)random(4);
//
//  // Go East
//  if (direction == 0)
//  {
//    creature[i].x += speed;
//  }
//
//  // Go West
//  else if (direction == 1)
//  {
//    creature[i].x -= speed;
//  }
//
//  // Go South
//  else if (direction == 2)
//  {
//    creature[i].y += speed;
//  }
//
//  // Go North
//  else if (direction == 3)
//  {
//    creature[i].y -= speed;
//  }
//}

