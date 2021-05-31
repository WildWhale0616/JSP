import java.applet.Applet;
import java.awt.Graphics;

public class HelloWorld extends Applet {
    String name;
    public void init()	
    {
	name = getParameter("name");
    }
    public void paint(Graphics g) {
        g.drawString("Hello World! I am " + name + "!", 50, 25);
    }
}
