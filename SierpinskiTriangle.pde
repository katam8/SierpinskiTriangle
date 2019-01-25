public void setup()
{
    size(601, 601);
    background(0);
}

public void draw()
{
    sierpinski(2, height - 2, height);
}

public void mouseClicked() {
    int clr1 = (int)(Math.random()*255 + 1);
    int clr2 = (int)(Math.random()*255 + 1);
    int clr3 = (int)(Math.random()*255 + 1);
    fill(clr1, clr2, clr3);
}

public void sierpinski(int x, int y, int len) 
{
    noStroke();
    if (len <= 20)
        triangle(x, y, x + len, y, x + len / 2, y - len);
    else {
        sierpinski(x, y, len / 2);
        sierpinski(x + len / 2, y, len / 2);
        sierpinski(x + len / 4, y - len / 2, len / 2);
    }
}