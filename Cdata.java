package Controller;
import java.awt.event.ActionEvent;
import javax.swing.Timer;
import Model.AdmonDB;
import View.Vdata;

public class Cdata {
	
	private final Vdata vdata;
	private final AdmonDB db;
	private final Timer timer = new Timer(1000, (ActionEvent e) -> {
			refresh();
	});
	
	public Cdata(Vdata vdata, AdmonDB db) {
		this.vdata = vdata;
		this.db = db;
		this.timer.start();
		getVotes();
	}
	
	public void getVotes() {
		vdata.setLabelPRD(String.valueOf(db.getVotesPRD()));
		vdata.setLabelPAN(String.valueOf(db.getVotesPAN()));
		vdata.setLabelPRI(String.valueOf(db.getVotesPRI()));
	}
	
	public void refresh() {
		vdata.invalidate();
		getVotes();
		vdata.repaint();
	}
}
