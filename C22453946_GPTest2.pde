ArrayList<Flag> flags = new ArrayList<Flag>();
void setup()
{
  flag = new Flag(w, h, 5, x, y);
  size(500, 500);
  colorMode(HSB);
  for(int i = 0; i < 10; i++)
  {
    flags.add(new Flag(0, 0, 5, random(0, width), random(0, height)));
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
  flag.update();
}
