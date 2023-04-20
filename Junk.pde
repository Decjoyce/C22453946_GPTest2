/* fill(255);
       noStroke();
     rect(x, y, 75, 60);
     float gapBar = 60/6;
     float colorChangeBar = 255/6;
     //  Bars
     for(int i = 0; i < 6; i++)
     {
       fill(colorChangeBar * i, 255, 255);
       rect(x, y + (gapBar * i), 75, gapBar);
     }
     float gapTri = 75/4;
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
          
       triangle(x, y + ((gapTri/2) * i), x + (w/2) - ((gapTri/2) * i), y + (h/2), x, y + 60 - ((gapTri/2) * i));
     }
     
     stroke(200, 255, 180);
     strokeWeight(1);
     noFill();
     circle(x + 10, y + h/2, 5);
*/
