/*
  Erick Sauri
  February 15, 2015
  Prof. Erin Cascioli
  IGME 202.01 Interactive Media Development
  Homework 2 - Rolling on Random
*/
class Ship
{
  PImage body, mLeg, lLeg, rLeg, fire;
  PVector position = new PVector();
  float move;
  Ship()
  {
    position.x = 265;
    position.y = 280;

    fire = loadImage("images/fire.png");
    lLeg = loadImage("images/leftleg.png");
    rLeg = loadImage("images/rightleg.png");
    body = loadImage("images/body.png");
    mLeg = loadImage("images/midleg.png");
  }

  void renderShip()
  {

    
    if (frameCount%5 == 0)
    {      
      move+= 5;

      if (move >= 15)
      {
        move = 0;
      }
    }

    image(fire, position.x + 1 + move, position.y + 1);
    image(lLeg, position.x + 3, position.y + 3);
    image(rLeg, position.x + 3, position.y + 5);
    image(body, position.x, position.y);
    image(mLeg, position.x - 5, position.y);
    
  }
}

