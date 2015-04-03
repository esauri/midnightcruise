/*
  Erick Sauri
  February 15, 2015
  Prof. Erin Cascioli
  IGME 202.01 Interactive Media Development
  Homework 2 - Rolling on Random
*/
class Rain
{
  PVector position = new PVector();
  float speed;  
  float move;

  Rain()
  {
    speed = random(3, 5);
    position.x = random(width);
    position.y = -10;
  }
  void pour()
  {
    position.y += speed;
    float n = noise(position.x);
    /*
    Using noise it will move slower between -1 1
     */
    position.x += map(n, 0, 1, -2, -1); 

    stroke(#7c8081);
    strokeWeight(1);
    line(position.x, position.y, position.x, position.y + 5);
  }
}

