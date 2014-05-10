// Function to initialise alive creatures at setup
void initCreature()
{
  for (int i = 0; i < creatureNumber; i++)
  {
    if ( i < 1000)
    {
      color cColour;
      int c = (int)random(3);
      norm = randomGaussian();
      int b = (int)random(1);
      float rndm = (sd * norm + mean);
      if(c == 0)
      {
        cColour = red;
      }else if (c == 1)
      {
        cColour = green;
      }else
      {
        cColour = blue;
      }
      creature[i] = new Creature((int)random(2), rndm, b, (int)random(0 + rndm, width - rndm), 
      (int)random(0 + rndm, height - rndm),
      true, i,  cColour, creature);
    }
    else 
    {
      creature[i] = new Creature(0, 0, 0, 0, 0, false, i, color(255), creature);
    }
  }
}

