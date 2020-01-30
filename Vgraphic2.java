package View;

import javax.swing.JFrame;
import javax.swing.JPanel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

public class Vgraphic2 extends JFrame {
	
	private JFreeChart pie; 
	private DefaultPieDataset data;
	
	public Vgraphic2() {}
	
	public void setData(DefaultPieDataset data2) {
		
		this.data = data2;
	}
	
	public void createGraphic() {
		
		JPanel vgr2Panel = new JPanel();
		this.setSize(700, 500);
		pie = ChartFactory.createPieChart3D("Pie graphic", data, true, true, true);
		
		ChartPanel chart = new ChartPanel(pie);
		chart.setBounds(5, 10, 410, 350);
		
		vgr2Panel.add(chart);
		this.add(vgr2Panel);
	}
}
