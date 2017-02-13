private double fractionLength = .7; 
private int smallestBranch = 10; 
private double branchAngle = .5;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here    
	double angle1, angle2;
	angle1 = angle + branchAngle;
	angle2 = angle - branchAngle;
	if(branchLength <= 2) 
	{
		fill(0,0,0);
		ellipse(x,y,1,1);
	}
	else
	{
		int endX1 = (int)(branchLength*Math.cos(angle1) + x);
		int endY1 = (int)(branchLength*Math.sin(angle1) + y);
		line(x,y,endX1,endY1);
		int endX2 = (int)(branchLength*Math.cos(angle2) + x);
		int endY2 = (int)(branchLength*Math.sin(angle2) + y);
		line(x,y,endX2,endY2);
		drawBranches(endX1,endY1,branchLength*fractionLength,angle1);
		drawBranches(endX2,endY2,branchLength*fractionLength,angle2);
	}
} 
