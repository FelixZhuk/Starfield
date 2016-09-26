//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double xPos;
	double yPos;
	double speed;
	double angle;
	int pColor;
	NormalParticle(double x, double y, double pSpeed, double pAngle) {
		xPos = x;
		yPos = y;
		speed = pSpeed;
		angle = pAngle;
		pColor = color(((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256)));

	}
	void move() {
		xPos = Math.cos(angle) * speed;
		yPos = Math.sin(angle) * speed;
	}
	void show() {
		fill pColor;
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

