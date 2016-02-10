public void setup()
{
	background(0);
	size (600, 600);
}
public void draw()
{
	sierpinski(0, height, width);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20)
	{
		triangle (x, y, x + len/2, y + len, x + len, y);
	}
    else 
    {
    	fill(len/3, len, len);
    	triangle (x, y, x + len/2, y + len, x + len, y);
    	sierpinski(x, y, len/2);
    	sierpinski(x + len/2, y, len/2);
    	sierpinski(x + len/4, y - len/2, len/2);
    }
}