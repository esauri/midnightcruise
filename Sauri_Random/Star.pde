/*
  Erick Sauri
  February 15, 2015
  Prof. Erin Cascioli
  IGME 202.01 Interactive Media Development
  Homework 2 - Rolling on Random
*/
class Star
{
  PVector position = new PVector(); 
  float move;

  Star()
  {
    reset();
  }

  void reset()
  {
    position.x = width + 10;
    position.y = random(height/2);
  }

  void starry()
  {   
    float n = noise(position.x);
    position.x += map(n, 0, 1, -2, -1); 
    if (position.x < -10)
    {
      reset();
    }
    fill(#f4f6fa);
    ellipse(position.x, position.y, 1, 1);
    
  }
}

