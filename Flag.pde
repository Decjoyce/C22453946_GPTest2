Class Flag
{
  float w, h;
  float s;
  float x, y;
  
  Flag()
  {
    this(75, 50, 3, width/2, height/2);
  }
  
  Flag(float w, float h, float s, float x, float y)
  {
    this.w = w;
    this.h = h;
    this.s = s;
    this.x = x;
    this.y = y;
  }
  
  void update()
  {
    render();
  }
  
  void render()
  {
     pushMatrix();
     rect(x, y, w, h);
     for(int i = 0; i < 5; i++)
     {
       rect(x * i, y * i, w, h);
     }
     popMatrix();
  }
}
