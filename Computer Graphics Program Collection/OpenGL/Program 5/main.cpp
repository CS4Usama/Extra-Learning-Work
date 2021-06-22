// With the help of OpenGL Programming display a Simple Green Cube with minimal calls of OpenGL.

#include <GL/glut.h>

GLfloat light_diffuse[] = {0.1, 1.0, 0.1, 1.0}; 	// Green Diffuse Light
GLfloat light_position[] = {0.5, 1.0, 1.0, 0.1}; 	// Infinite Light Location

// Normals for the 6 Faces of a Cube
GLfloat n[6][3] = { {-1.0, 0.0, 0.0}, {0.0, 1.0, 0.0}, {1.0, 0.0, 0.0},
  					{0.0, -1.0, 0.0}, {0.0, 0.0, 1.0}, {0.0, 0.0, -1.0} };

// Vertex Indices for the 6 Faces of a Cube
GLint faces[6][4] = { {0, 1, 2, 3}, {3, 2, 6, 7}, {7, 6, 5, 4},
					  {4, 5, 1, 0}, {5, 6, 2, 1}, {7, 4, 0, 3} };

GLfloat v[8][3];	// will be Filled-in with X,Y,Z Vertex

void DrawBox()
{
	for(int i = 0; i < 6; i++)
	{
	    glBegin(GL_QUADS);
	    glNormal3fv(&n[i][0]);
	    glVertex3fv(&v[faces[i][0]][0]);
	    glVertex3fv(&v[faces[i][1]][0]);
	    glVertex3fv(&v[faces[i][2]][0]);
	    glVertex3fv(&v[faces[i][3]][0]);
    	glEnd();
	}
}

void Display()
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	DrawBox();
	glutSwapBuffers();
}

void init()
{
	// Setup Cube Vertex Data
	v[0][0] = v[1][0] = v[2][0] = v[3][0] = -1;
	v[4][0] = v[5][0] = v[6][0] = v[7][0] = 1;
	v[0][1] = v[1][1] = v[4][1] = v[5][1] = -1;
	v[2][1] = v[3][1] = v[6][1] = v[7][1] = 1;
	v[0][2] = v[3][2] = v[4][2] = v[7][2] = 1;
	v[1][2] = v[2][2] = v[5][2] = v[6][2] = -1;

	// Enable a Single OpenGL Light
	glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse);
	glLightfv(GL_LIGHT0, GL_POSITION, light_position);
	glEnable(GL_LIGHT0);
	glEnable(GL_LIGHTING);

	// Use Depth Buffering for Hidden Surface Elimination
	glEnable(GL_DEPTH_TEST);

	// Setup the View of Cube
	glMatrixMode(GL_PROJECTION);
	gluPerspective(
					40.0,	// Field of View in Degree
    				1.0,	// Aspect Ratio
    				1.0,	// Z near
					10.0	// Z far
				 );

	glMatrixMode(GL_MODELVIEW);
	gluLookAt(
				0.0, 0.0, 5.0,		// Eye is at (0,0,5)
    			0.0, 0.0, 0.0,		// Center is at (0,0,0)
    			0.0, 1.0, 0.		// Up is in Positive Y Direction
    		 );

	// Adjust Cube Position to be Asthetic Angle
	glTranslatef(0.0, 0.0, -1.0);
	glRotatef(60, 1.0, 0.0, 0.0);
	glRotatef(-20, 0.0, 0.0, 1.0);
}

int main(int argc, char **argv)
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH);
	glutCreateWindow("Cyber Hawk");
	glutDisplayFunc(Display);
	init();		// User-defined Function
	glutMainLoop();
	return 0;		// ANSI C requires main to return integer
}
