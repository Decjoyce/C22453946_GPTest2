ArrayList<Flag> flags = new ArrayList<Flag>();
void setup()
{
  size(500, 500);
  //fullScreen();
  colorMode(HSB);
  flagWave = new FlagPole(4, 3, 30, width/2 - (4 * 30), height/8);
  for(int i = 0; i < 10; i++)
  {
    flags.add(new Flag(4, 3, random(10, 20), random(0, width), random(0, height), random(0, 1), random(0, 1)));
  }
}

FlagPole flagWave;

int numFlags = 10;
boolean mode = false;

void draw()
{
  background(255);
  
}

void flagPole()
{
  flagWave.update();
}

void flagJiggy()
{
  for(int i = 0; i < numFlags; i++)
  {
    flags.get(i).update();
  }
}
