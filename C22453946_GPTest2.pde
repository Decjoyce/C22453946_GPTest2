void setup()
{
  flag = new Flag(25, 25, 3, width/2, height/2);
}

Flag flag;

void draw()
{
       rect(x, y, w, h);
     for(int i = 0; i < 5; i++)
     {
       rect(x * i, y * i, w, h);
     }
}
