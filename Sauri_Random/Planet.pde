/*
  Erick Sauri
  February 15, 2015
  Prof. Erin Cascioli
  IGME 202.01 Interactive Media Development
  Homework 2 - Rolling on Random
*/
class Planet
{
  int planetGen;
  PShape deathStar, ds1, ds2, ds3, ds4;
  PVector position = new PVector();
  float shift;
  PImage saturn, ufo, fsm;
  float r;
  boolean noPlanet = true;

  Planet()
  {
    
    reset();
    saturn = loadImage("images/planet.png");  
    ufo = loadImage("images/ufo.png");
    fsm = loadImage("images/fsm.png");
      
    deathStar = createShape(GROUP);

    ellipseMode(CENTER);
    /* --Death Star Line-- */
    strokeWeight(3);
    stroke(#302b25);
    ds2 = createShape(LINE, 0, 40, 100, 60);

    /* --Death Star Sphere-- */
    noStroke();
    fill(#b7a8ab);
    ds1 = createShape(ELLIPSE, 0, 0, 100, 100);

    fill(#a59887);
    ds3 = createShape(ELLIPSE, 20, 10, 20, 20);

    fill(#353128);
    ds4 = createShape(ELLIPSE, 25, 15, 5, 5);

    //Add them together

    deathStar.addChild(ds1);
    deathStar.addChild(ds2);
    deathStar.addChild(ds3);
    deathStar.addChild(ds4);
    /* --Death Star End-- */
  }

  void reset()
  {
    position.x = 1000;
    position.y = random(height/3);  

    r = random(0, 1);
  }

  void planetRender()
  {    
    float n = noise(position.x);
    position.x += map(n, 0, 1, -2, -1);

    if (r > .70)
    {
      image(saturn, position.x, position.y);
    }
     else if(r > .40)
    {
      image(ufo, position.x, position.y);
    } 
    else if(r > .10)
    {
      shape(deathStar,position.x, position.y);
    }
    else
    {
      image(fsm, position.x, position.y);      
    }          
    if(position.x <= - 150)
    {
      reset();
    }
  }
}

