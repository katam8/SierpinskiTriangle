int length = 200;
int clr1;
int clr2;
int clr3;
public void setup()
{
    size(601, 601);
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