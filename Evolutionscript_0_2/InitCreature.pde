// Function to initialise alive creatures at setup
void initCreature()
{
  for (int i = 0; i < creatureNumber; i++)
  {
    if ( i < 100)
    {
      int rndm = (int)random(5,15);
      creature[i] = new Creature((int)random(2), rndm, (int)random(0 + rndm, width - rndm), 
      (int)random(0 + rndm, height - rndm),
      true, i,  color((int)random(255), (int)random(255), (int)random(255)), creature);
    }
    else 
    {
      creature[i] = new Creature(0, 0, 0, 0, false, i, color(255), creature);
    }
  }
}

