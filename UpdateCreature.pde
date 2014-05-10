// Function to update the creatures
void updateCreature()
{
  for (int i = 0; i < 1000; i++)
  {
    if (creature[i].alive == true)
    {
      if (creature[i].shape == 0)
      {      
        fill(creature[i].colour);
        ellipse(creature[i].x, creature[i].y, creature[i].size, creature[i].size);
      }
      else if (creature[i].shape == 1)
      {       
        fill(creature[i].colour);
        rect(creature[i].x, creature[i].y, creature[i].size, creature[i].size);
      }
      
    }
  }
}
