// With the help of OpenGL Programming display the string “First Graphics Window”.

#include <string.h>
#include <GL/glut.h>

void Output(int x, int y, char *string)
{
	glRasterPos2f(x, y);
	int len = (int) strlen(string);
	for (int i = 0; i < len; i++)
    	glutBitmapCharacter(GLUT_BITMAP_TIMES_ROMAN_24, string[i]);
}

void Display()
{
	glClear(GL_COLOR_BUFFER_BIT);
	Output(-1, 0, "First Graphics Window");
	glutSwapBuffers();
}

int main(int argc, char** argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE);
    glutInitWindowSize(300, 300);
    glutInitWindowPosition(100, 100);
    glutCreateWindow("Cyber Hawk");
    glutDisplayFunc(Display);
    glutMainLoop();
    return 0;
}
