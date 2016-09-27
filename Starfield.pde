void setup()
{
	size(400,400);
}
void draw()
{
	background(255);
}
class NormalParticle implements Particle
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
		pColor = color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));

	}
	public void move() {
		xPos = Math.cos(angle) * speed;
		yPos = Math.sin(angle) * speed;
	}
	public void show() {
		fill(pColor);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	public void show() {

	}
	public void move() {

	}
}
class JumboParticle implements Particle //uses inheritance
{
	public void show() {

	}
	public void move() {

	}
}

