// Asexual reproduction every 10 seconds (600 frames) for every cell that's alive

// Time until cloning in seconds
int interval = 10;

// Calculation of frame interval and the divisibility of it into how many frames
// have already passed
int frameInterval = (int)frameRate * interval;
int cloneTime = frameCount % frameInterval;

// Function to create clones
void cloneCreature() 
{
  for (int i = 0; i < creatureNumber; i++)
  {
    if (creature[i].alive == true)
    {
      // If interval has passed
      if (cloneTime == 0)
      {
        // Create an integer called birthTime that stores the frameCount at that time
        // Find the next creature in the array who is dead
        // and change its alive boolean to true
        // and change its x and y position to equal to creature[i].x and creature[i].y
        // and change its characteristics using an algorithm (95% chance of parental, 5% chance of new)
        // and give it a newborn boolean* set to true
      }
    }
  }
}


// * Newborn boolean 
// If true then other creatures cannot fight it or mate with it
// And calculate frameCount-birthTime and call it age
// Calculate the remainder of age divided by 5 seconds (5*60=300frames)
// If the remainder is 0 (i.e. age is 5 seconds) then set newborn boolean to false
// If newborn boolean is false then do not calculate above
