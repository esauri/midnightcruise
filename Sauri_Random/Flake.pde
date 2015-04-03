/*
  Erick Sauri
  February 15, 2015
  Prof. Erin Cascioli
  IGME 202.01 Interactive Media Development
  Homework 2 - Rolling on Random
*/
class Flake
{
  PVector position = new PVector();
  float speed;  
  float move;

  Flake()
  {
    speed = random(3, 5);
    position.x = random(width);
    position.y = -10;
  }

  void snow()
  {
    position.y += speed;       
    position.x += sin(position.y/10f)*4;  
    noStroke(); 
    fill(#ecf0f1);
    ellipse(position.x, position.y, 5, 5);
  }
}

