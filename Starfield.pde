Particle[] bob;

void setup()
{
	size(400,400);
	bob = new Particle[300];
	for (int i = 0; i < bob.length; i++) {
		bob[i] = new NormalParticle((int)(Math.random() * 400),(int)(Math.random() * 400),(int)(Math.random() * 5) + 1, (int)(Math.random() * 2 * PI));
	}
	bob[0] = new OddballParticle();
	bob[1] = new JumboParticle();
}
void draw()
{
	background(255);
	for (int i = 0; i < bob.length; i ++) {
		bob[i].show();
		bob[i].move();
	}
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
		if (xPos > 0 && xPos < 400) {
			xPos = xPos + Math.cos(angle) * speed;
		} 
		else {
			angle = Math.PI + angle;
			xPos = xPos + Math.cos(angle) * speed;
		} 
		if (yPos > 0 && yPos < 400) {
			yPos = yPos + Math.sin(angle) * speed;
		} 
		else {
			angle = Math.PI + angle;
			yPos = yPos + Math.sin(angle) * speed;
		}
	}
	public void show() {
		fill(pColor);
		ellipse((float)xPos,(float)yPos,3,3);
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

