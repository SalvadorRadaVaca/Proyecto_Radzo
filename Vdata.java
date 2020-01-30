package View;
import javax.swing.JPanel;
import javax.swing.JFrame;
import javax.swing.JLabel;

@SuppressWarnings("serial")
public class Vdata extends JFrame {
	
	JLabel labelPRD = new JLabel("The PRD have");
	JLabel labelvPRD = new JLabel("0");
	
	JLabel labelPAN = new JLabel("The PAN have");
	JLabel labelvPAN = new JLabel("0");
	
	JLabel labelPRI = new JLabel("The PRI have");
	JLabel labelvPRI = new JLabel("0");
	
	public Vdata() {
		
		JPanel dataPanel = new JPanel();
		
		this.setSize(300, 100);
		
		dataPanel.add(labelPRD);
		dataPanel.add(labelvPRD);
		
		dataPanel.add(labelPAN);
		dataPanel.add(labelvPAN);
		
		dataPanel.add(labelPRI);
		dataPanel.add(labelvPRI);
		
		this.add(dataPanel);
	}
	
	public void setLabelPRD(String count) {
		labelvPRD.setText(count);
	}
	
    public void setLabelPAN(String count) {
    	labelvPAN.setText(count);
	}

    public void setLabelPRI(String count) {
    	labelvPRI.setText(count);
    }
}
