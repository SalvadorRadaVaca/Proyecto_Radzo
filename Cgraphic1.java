package Controller;
import java.awt.event.ActionEvent;
import javax.swing.Timer;
import org.jfree.data.category.DefaultCategoryDataset;
import Model.AdmonDB;
import View.Vgraphic1;

public final class Cgraphic1 {
	
	private final DefaultCategoryDataset data = new DefaultCategoryDataset();
	private final Vgraphic1 vgr1;
	private final AdmonDB db;
	private final Timer timer = new Timer(1000, (ActionEvent e) -> { 
		refresh(); 
		});
	
	public Cgraphic1(Vgraphic1 vgr1, AdmonDB db) {
		this.vgr1 = vgr1;
		this.db = db;
		this.timer.start();
		getVotes();
	}
	
	public void getVotes() {
		data.addValue(db.getVotesPRD(), "PRD", "PRD");
		data.addValue(db.getVotesPAN(), "PAN", "PAN");
		data.addValue(db.getVotesPRI(), "PRI", "PRI");
		vgr1.setData(data);
		vgr1.createGraphic();
	}
	
	public void refresh() {
		vgr1.invalidate();
		getVotes();
		vgr1.validate();
		vgr1.repaint();
	}
	
}
