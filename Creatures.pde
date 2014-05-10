// Sets up the Creature class
class Creature {
  int shape, x, y, id, size, behaviour;
  boolean alive;
  color colour;
  Creature[] others;

  Creature(int Shape, int Size, int Behaviour, int xpos, int ypos, boolean Alive, int idin,  color c, Creature[] oin)
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
     for (int i = id + 1; i < 1000; i++)
     {
        float minDistance = size;
        float xDist = x - others[i].x;
        float yDist = y - others[i].y;
        float dist = sqrt(xDist*xDist + yDist*yDist);
        if (dist < minDistance)
        {
          creature[i].alive = false;
        }
     }
}
}








