class FlagPole
{
  
  float w, h;
  float s;
  float x, y;
  
  FlagPole()
  {
    this(75, 50, 3, width/2, height/2);
  }
  
  FlagPole(float w, float h, float s, float x, float y)
  {
    this.w = w *= s;
    this.h = h *= s;
    this.s = s;
    this.x = x;
    this.y = y;
  }
  
  void update()
  {
   w = abs(lerp(w, w + sin(random(0, 360)) * 10, 0.2f));
   h = abs(lerp(h, h + sin(random(0, 360)) * 10, 0.2f));
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
     ellipse(x + w/8, y + h/2, w/16, h/16);
  }
}
