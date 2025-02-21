public void setup()
{
  background(40,30,40);
  size(750,750);
}
public void draw()
{
  sierpinski(100,750,500);
   sierpinski(35,650,700);
}
public void concentric(int x1, int y1, int x2, int y2, int x3, int y3,int a)
{
  stroke(233);
  fill(200,500,250);
  triangle(x1, y1, x2, y2, x3, y3);
  if(a < 19){
    concentric(x1+10, y1-5, x2, y2+13, x3-10, y3-5, a+1);
  }
}
public void sierpinski(int x, int y, int length) 
{  
  stroke(300);
  fill(50,40,40);
  if(length <= 250) {
    triangle(x, y, x+length/2, y-length, x+length, y);
    concentric(x, y, x+length/2, y-length, x+length, y, 10);
  }
  else {
    sierpinski(x,y,length/2);
    sierpinski(x+length/2,y,length/2);
    sierpinski(x+length/4,y-length/3,length/2);
  }
}
