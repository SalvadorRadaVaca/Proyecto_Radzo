package View;
import java.awt.event.ActionListener;
import javax.swing.*;

@SuppressWarnings("serial")
public class Vmenu extends JFrame {

	JButton buttonPRD = new JButton("Vote to PRD");
	
	JButton buttonPAN = new JButton("Vote to PAN");
	
	JButton buttonPRI = new JButton("Vote to PRI");
	
	JButton buttonRVotes = new JButton("Votes report");
	
	JButton buttonGPie = new JButton("Pie graphic");
	
	JButton buttonGBars = new JButton("Bars praphic");
	
	public Vmenu() {
		
		JPanel vmPanel = new JPanel();
		this.setSize(200, 400);
		
		vmPanel.add(buttonPRD);
		
		vmPanel.add(buttonPAN);
		
		vmPanel.add(buttonPRI);
		
		vmPanel.add(buttonRVotes);
		
		vmPanel.add(buttonGPie);
		
		vmPanel.add(buttonGBars);
		
		this.add(vmPanel);
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
	}
	
	public void buttonPRD(ActionListener listen) {
		buttonPRD.addActionListener(listen);
	}
	
	public void buttonPAN(ActionListener listen) {
		buttonPAN.addActionListener(listen);
	}
	
	public void buttonPRI(ActionListener listen) {
		buttonPRI.addActionListener(listen);
	}
	
	public void buttonRVotes(ActionListener listen) {
		buttonRVotes.addActionListener(listen);
	}
	
	public void buttonGPie(ActionListener listen) {
		buttonGPie.addActionListener(listen);
	}
	
	public void buttonGBars(ActionListener listen) {
		buttonGBars.addActionListener(listen);
	}
	
	public void print(String count) {
		System.out.println(count);
	}

}
