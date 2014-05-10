// Function to initialise alive creatures at setup
void initCreature()
{
  for (int i = 0; i < creatureNumber; i++)
  {
    if ( i < 100)
    {
      int c = (int)random(3);
      norm = randomGaussian();
      int B = (int)random(1);
      float rndm = (sd * norm + mean);
      if(c == 0)
      {
        // Red
        r = 255;
        g = 0;
        b = 0;
      }
      else if (c == 1)
      {
        // Green
        r = 0;
        g = 255;
        b = 0;
      }
      else
      {
        // Blue
        r = 0;
        g = 0;
        b = 255;
      }
      
      creature[i] = new Creature((int)random(2), rndm, B, (int)random(0 + rndm, width - rndm), 
      (int)random(0 + rndm, height - rndm),
      true, i,  color(r, g, b));
    }
    else 
    {
      creature[i] = new Creature(0, 0, 0, 0, 0, false, i, color(255));
    }
  }
}

