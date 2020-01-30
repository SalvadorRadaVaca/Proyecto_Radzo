package View;
import javax.swing.JFrame;
import javax.swing.JPanel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

@SuppressWarnings("serial")
public class Vgraphic1 extends JFrame {
	
	private JFreeChart bars;
	private DefaultCategoryDataset data;
	
	public Vgraphic1() {}
	
	public void setData(DefaultCategoryDataset data) {
		
		this.data = data;
	}
	
	public void createGraphic() {
		
		JPanel vgr1Panel = new JPanel();
		this.setSize(700, 500);
		bars = ChartFactory.createBarChart("Bars graghic", "politic party", "Votes", data, PlotOrientation.HORIZONTAL, true, true, true);
		
		CategoryPlot plot = (CategoryPlot) bars.getPlot();
		plot.setDomainGridlinesVisible(true);
		
		ChartPanel chart = new ChartPanel(bars);
		chart.setBounds(5, 10, 410, 350);
		
		vgr1Panel.add(chart);
		this.add(vgr1Panel);
	}
}
