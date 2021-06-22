#include <iostream>
#include <graphics.h>
#include <stdlib.h>	
#include <math.h>
#define ROUND(x) ((int)(x+0.5))
using namespace std;

float xc,yc,rx,ry;

void drawpoint(int x, int y)
{	 
	putpixel(xc+x,yc+y,10);
	putpixel(xc-x,yc+y,10);
	putpixel(xc+x,yc-y,10);
	putpixel(xc-x,yc-y,10);
}

int main()
{
	float x,y;
	int gdriver=DETECT, gmode, ecode;
	char comma;
	initgraph(&gdriver, &gmode, "C:\\TURBOC3\\BGI");
	
	/* read result of initialization */
	ecode = graphresult();
	if (ecode != grOk)
	{
		cout<<"Graphics error:\n";
		cout<<"Press any key...";
		getch();
		exit(1);
	}
	
	float p;
	cout<<"Enter Center of Ellipse (x,y): ";
	cin>>xc>>comma>>yc;
	cout<<"Enter Radius along X-Axis: ";
	cin>>rx;
	cout<<"Enter Radius along Y-Axis: ";
	cin>>ry;
	yc = getmaxy()-yc;
	x=0;
	y=ry;
	drawpoint(x,y);
	p=ROUND(ry*ry-rx*rx*ry+0.25*(rx*rx));	//ry2-rx2*ry+(.25*rx2)
	
	while((ry*ry)*x<(rx*rx)*y)
	{
		x=x+1;
		if(p>=0)
		{
			y=y-1;
			p=p+2*(ry*ry)*x+ry*ry-2*(rx*rx)*y;
		}
		else
			p=p+2*(ry*ry)*x+ry*ry;
		drawpoint(x,y);
	}
	
	p=ROUND(ry*ry*((x+.5)*(x+.5))+rx*rx*((y-1)*(y-1))-(rx*rx)*(ry*ry));
	
	while(y>0)
	{
		y=y-1;
		if(p<=0)
		{
			x=x+1;
			p=p-2*(rx*rx)*y+rx*rx+2*(ry*ry)*x;
		}
		else
			p=p-2*(rx*rx)*y+rx*rx;
		drawpoint(x,y);
	}
	cout<<"\nMy name is _______";
	getch();
	closegraph();
}
