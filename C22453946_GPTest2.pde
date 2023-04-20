ArrayList<Flag> flags = new ArrayList<Flag>();
void setup()
{
  //flag = new Flag(w, h, 5, x, y);
  size(500, 500);
  colorMode(HSB);
  for(int i = 0; i < 10; i++)
  {
    flags.add(new Flag(4, 3, random(10, 20), random(0, width), random(0, height, (int) random(0, 1), (int) random(0, 1)));
  }
}

Flag flag;

float x = 50;
float y = 50;
float w = 100;
float h = 75;
int numFlags = 10;

void draw()
{
  background(255);
  for(int i = 0; i < numFlags; i++)
  {
    flags.get(i).update();
  }
}
