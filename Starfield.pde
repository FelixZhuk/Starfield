Particle[] bob;

void setup()
{
	size(400,400);
	bob = new Particle[300];
	for (int i = 0; i < bob.length; i++) {
		bob[i] = new NormalParticle((int)(Math.random() * 400),(int)(Math.random() * 400),(int)(Math.random() * 5) + 1, (Math.random() * 2 * PI));
	}
	bob[0] = new OddballParticle();
	bob[1] = new JumboParticle((int)(Math.random() * 400),(int)(Math.random() * 400),(int)(Math.random() * 5) + 1, (Math.random() * 2 * PI));
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

class OddballParticle implements Particle {//uses an interface
	double xPos;
	double yPos;
	double angle;
	double speed;

	OddballParticle() {
		xPos = (Math.random() * 400);
		yPos = (Math.random() * 400);
		angle = (Math.random() * Math.PI * 2) ;
		speed = (Math.random() * 5) + 1;
	}

	public void show() {
		fill(0,0,255);
		rect((float)xPos,(float)xPos,10,10);
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
}

class JumboParticle implements Particle //uses inheritance
{
	double xPos;
	double yPos;
	double speed;
	double angle;
	int pColor;

	JumboParticle(double x, double y, double pSpeed, double pAngle) {
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
		ellipse((float)xPos,(float)yPos,20,20);
	}
}

