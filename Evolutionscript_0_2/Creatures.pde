// Sets up the Creature class
class Creature {
  int shape, x, y, id, size;
  boolean alive;
  color colour;
  Creature[] others;

  Creature(int Shape, int Size, int xpos, int ypos, boolean Alive, int idin,  color c, Creature[] oin)
  {
    shape = Shape;
    x = xpos;
    y = ypos;
    alive = Alive;
    id = idin;
    others = oin;
    colour = c;
    size = Size;
  }
  
  // Class functions? E.g. stay on screen, collide, etc.
  
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
          x = width/2;
          y = height/2;
        }
     }
}
}








