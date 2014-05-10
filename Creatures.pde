// Sets up the Creature class
class Creature {
  int shape, id, behaviour;
  float size, x, y;
  boolean alive;
  color colour;
  Creature[] others;

  Creature(int Shape, float Size, int Behaviour, float xpos, float ypos, boolean Alive, int idin,  color c, Creature[] oin)
  {
    shape = Shape;
    x = xpos;
    y = ypos;
    alive = Alive;
    id = idin;
    others = oin;
    colour = c;
    size = Size;
    behaviour = Behaviour;
  }
  
  // Class functions? E.g. stay on screen, collide, etc.
  
  // Stay on screen
  void stay()
  {
        if (x + size/2 > width)
        {
          x = width - size/2;
        } 
        else if (x - size/2 < 0)
        {
          x = size/2;
        }
        if (y + size/2 > height)
        {
          y = height - size/2;
        }
        else if (y - size/2 < 0)
        {
          y = size/2;
        }
  }
  
  // Collide
  void collide()
  {
     for (int i = 0; i < 1000; i++)
     {
        float minDistance = size/2 + creature[i].size/2;
        float xDist = x - creature[i].x;
        float yDist = y - creature[i].y;
        float dist = sqrt(xDist*xDist + yDist*yDist);
        if (dist < minDistance && creature[i].alive == true && alive == true && creature[i].id != id)
        {
          int decision = 0;
          if(decision == 0)
          {
            if(size < creature[i].size)
            {
            alive = false;
            }
            else if(size == creature[i].size)
            {
              int rndm = (int)random(2);
              if(rndm == 0)
              {
                alive = false;
              }
              else
              {
                creature[i].alive = false;
              }
            }
          }
          
        }
     }
}
}








