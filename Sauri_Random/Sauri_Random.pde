/*
  Erick Sauri
  February 15, 2015
  Prof. Erin Cascioli
  IGME 202.01 Interactive Media Development
  Homework 2 - Rolling on Random
*/
ArrayList<Flake> snowflakes;  /*Snow flakes*/
ArrayList<Rain> raindrops;  /*Raindrops*/
ArrayList<Star> constellation;  /*Constellations*/

//Time
float t = 0.0;
int r;

int savedTime; //Variable to keep track of time for weather purposes
int totalTime = 15000; //total time is equal to # of seconds passed * 1000 so in this case 5 seconds

Ship spaceship;
Planet globe;

boolean rained = false;
boolean snowed = false;
float mover;

void setup()
{
  size(960, 720, P2D);
  smooth();

  savedTime = millis();
  spaceship = new Ship();
  globe = new Planet();
  constellation = new ArrayList<Star>();
  snowflakes = new ArrayList<Flake>(); /*Snow flakes*/
  raindrops = new ArrayList<Rain>(); /*Raindrops*/
}

void draw() {
  background(#231f20);
  fill(255);
  noStroke();

  int passedTime = millis() - savedTime; //how much time has passed minus how much time since last time

    if (passedTime > totalTime)
  {
    raindrops.clear();    
    snowflakes.clear();

    r = int(random(1, 3));     
    savedTime = millis();
  }
  starScream();
  landscape();    

  globe.planetRender();


  spaceship.renderShip();
  weather(r);

}

void landscape()
{

  float xoff = t;

  for (int i = 0; i < width; i++) {
    float y = height/2 + noise(xoff)*height/3;
    xoff += 0.01;
    stroke(#749dcf);
    line(i, height, i, y);
    stroke(#6b93c3);
    line(i, height, i, y + 10);
    stroke(#648ab8);
    line(i, height, i, y + 20);
    noStroke();
  }  

  t+= 0.01;

  mover = t * xoff;
}

void weather(int r)
{
  switch(r)
  {
  case 0:
    break;
  case 1:
    drizzle();
    break;
  case 2:
    blizzard();
    break;
  }
}

void blizzard()
{
  for (Flake f : snowflakes)
  {
    f.snow();
  }

  if (frameCount%15 == 0 && snowflakes.size() < 45)
  {
    snowflakes.add(new Flake());
  }
}

void drizzle()
{
  for (Rain r : raindrops)
  {
    r.pour();
  }

  if (frameCount%15 == 0 && raindrops.size() < 45)
  {
    raindrops.add(new Rain());
  }
}

void starScream()
{
  for (Star s : constellation)
  {
    s.starry();
  }

  if (frameCount%30 == 0)
  {
    constellation.add(new Star());
  }
}

