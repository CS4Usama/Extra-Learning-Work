/* Write a program which can get the values on run time then draw the ellipse. When values are entered then the message must be display
"MY NAME IS: (mention your name)" then the desired ellipse will be drawn as output. */

#include <iostream>
#include <graphics.h>
using namespace std;
int main()
{
	int x, y, radX, radY;
	int gd=DETECT, gm, err;
	initgraph(&gd,&gm,"");
	err=graphresult();
	if(err!=grOk)
	{
		cout<<"Graphics Error "<<grapherrormsg(err);
		exit(1);
	}
	
//	Syntax:		void setcolor(int color);
	setcolor(10);	// 10 for LightGreen Color
	
//	Syntax:		outtextxy(x, y, "text");
	outtextxy(30,0, "My name is USAMA");
	
	cout<<"Enter Center of the Ellipse (x,y):  ";
	cin>>x>>y;
	cout<<"Enter Radius along X-Axis: ";
	cin>>radX;
	cout<<"Enter Radius along Y-Axis: ";
	cin>>radY;
	
//	Syntax:		void ellipse(int x, int y, int startAngle, int endAngle, int xRadius, int yRadius);
//	ellipse(130,70,90,180,100,50);		startAngle 0 and endAngle 360 will make a complete ellipse.

	ellipse(x, y, 0, 360, radX, radY);
	
	getch();
	closegraph();
	return 0;
}
