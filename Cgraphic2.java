package Controller;
import java.awt.event.ActionEvent;
import javax.swing.Timer;
import org.jfree.data.general.DefaultPieDataset;
import Model.AdmonDB;
import View.Vgraphic2;

public class Cgraphic2 {
	
	private final DefaultPieDataset data = new DefaultPieDataset();
	private final Vgraphic2 vgr2;
	private final AdmonDB db;
	private final Timer timer = new Timer(1000, (ActionEvent e) -> { 
		refresh(); 
		});
	
	public Cgraphic2(Vgraphic2 vgr2, AdmonDB db) {
		this.vgr2 = vgr2;
		this.db = db;
		this.timer.start();
		getVotes();
	}
	
	public void getVotes() {
		data.setValue("PRD", db.getVotesPRD());
		data.setValue("PAN", db.getVotesPAN());
		data.setValue("PRI", db.getVotesPRI());
		vgr2.setData(data);
		vgr2.createGraphic();
	}
	
	public void refresh() {
		vgr2.invalidate();
		getVotes();
		vgr2.validate();
		vgr2.repaint();
	}
}
