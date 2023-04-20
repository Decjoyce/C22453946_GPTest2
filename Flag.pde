class Flag
{
  
  float w, h;
  float s;
  float x, y;
  int o;
  int p;
  
  Flag()
  {
    this(75, 50, 3, width/2, height/2, 1, 1);
  }
  
  Flag(float w, float h, float s, float x, float y, int o, int p)
  {
    this.w = w *= s;
    this.h = h *= s;
    this.s = s;
    this.x = x;
    this.y = y;
    this.o = o;
    this.p = p;
  }
  
  void update()
  {
    //w += lerp(w, -sin(random(0, 360)), 0.85f) * 0.2;
   // h += lerp(h, sin(random(0, 360)), 0.85f) * 0.05;
   if(o == 1)
   {
     x++;
     if(x >= width)
     {
       x = 0 - w;  
     }
   }
   else
   {
     x--;
     if(x + w  <= 0)
     {
       x = width;  
     }
   }
   if(p == 1)
   {
     y++;
     if(y >= height)
     {
       y = 0 - h;  
     }
   }
   else
   {
     y--;
     if(y + h  <= 0)
     {
       y = height;  
     }
   }
   w = lerp(w, w + sin(random(0, 360)) * 2, 0.2f);
   h = lerp(h, h + sin(random(0, 360)) * 2, 0.2f);
   render();
  }
  
  void render()
  {
     fill(255);
     noStroke();
     rect(x, y, w, h);
     float gapBar = h/6;
     float colorChangeBar = 255/6;
     //  Bars
     for(int i = 0; i < 6; i++)
     {
       fill(colorChangeBar * i, 255, 255);
       rect(x, y + (gapBar * i), w, gapBar);
     }
     float gapTri = h/4;
     //float colorChangeTri = 255/6;
     //  Triangles
     for(int i = 0; i < 4; i++)
     {
       if(i == 0)
       fill(0);
       if(i == 1)
         fill(25, 255, 170);
       if(i == 2)
         fill(230, 100, 255);
        if(i == 3)
          fill(40, 255, 255);
          
       triangle(x, y + ((gapTri/2) * i), x + (w/2) - ((gapTri/2) * i), y + (h/2), x, y + h - ((gapTri/2) * i));
     }
     
     stroke(200, 255, 180);
     strokeWeight(1);
     noFill();
     circle(x + w/8, y + h/2, 5);
  }
}
