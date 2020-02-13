int value=color(255,255,255);
int otherValue=color(0,0,0);
public void setup(){
	size(800,800);
}
public void draw(){
	background(otherValue);
	fill(value);
	myFractal(400,400,400);
}
public void myFractal(int x, int y, int siz){
	
	ellipse(x,y,siz,siz);
	if(siz>10){
		myFractal(x-siz/2,y-siz/2,siz/2);
		myFractal(x+siz/2,y+siz/2,siz/2);
		myFractal(x+siz/2,y-siz/2,siz/2);
		myFractal(x-siz/2,y+siz/2,siz/2);
	}
}
public void mouseMoved()
{
	value=color(mouseX,mouseY,mouseX);
	otherValue=color(255-mouseX,255-mouseY,255-mouseX);
}