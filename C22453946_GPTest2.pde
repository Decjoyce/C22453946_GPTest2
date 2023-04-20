ArrayList<Flag> flags = new ArrayList<Flag>();
void setup()
{
  flag = new Flag(w, h, 5, x, y);
  size(500, 500);
  colorMode(HSB);
}

Flag flag;

float x = 50;
float y = 50;
float w = 100;
float h = 75;

void draw()
{
  background(255);
  flag.update();
}
