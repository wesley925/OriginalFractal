public void setup()
{
  size(800,800);
  
}
public void draw()
{
  background(0);
  noStroke();
  fill(255,255,0);
  myFractal(400,400,10000);
}
public void myFractal(int x, int y, int r)
{
 ellipse(x,y,r,r);
 ellipse(x+r,y+r,r/2,r/2);
 ellipse(x-r,y-r,r/2,r/2);
 ellipse(x-r,y+r,r/2,r/2);
 ellipse(x+r,y-r,r/2,r/2);

  if (r>25)
  {
    stroke(0);
    myFractal(x,y,r/2);
  }
}