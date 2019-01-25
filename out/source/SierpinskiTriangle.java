import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SierpinskiTriangle extends PApplet {

int length = 200;
int clr1;
int clr2;
int clr3;
public void setup()
{
    
    background(0);
}

public void draw()
{
    sierpinski(2, height - 2, length);
}

public void mouseClicked() {
    fill(0,0,0);
    rect(0, 0, width, height);
    clr1 = (int)(Math.random()*255 + 1);
    clr2 = (int)(Math.random()*255 + 1);
    clr3 = (int)(Math.random()*255 + 1);
    //fill(clr1, (int)((float)(900-y)/900*255), clr3);
    if(length == 200) {
        length = 400;
    } else if(length == 400) {
        length = 600;
    } else {}
}

public void sierpinski(int x, int y, int len) 
{
    fill((int)((float)(900-y)/900*255), clr2, clr3);
    noStroke();
    if (len < 20)
        triangle(x, y, x + len, y, x + len / 2, y - len);
    else {
        sierpinski(x, y, len / 2);
        sierpinski(x + len / 2, y, len / 2);
        sierpinski(x + len / 4, y - len / 2, len / 2);
    }
}
  public void settings() {  size(601, 601); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SierpinskiTriangle" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
