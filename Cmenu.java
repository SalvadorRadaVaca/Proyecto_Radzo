package Controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import Model.AdmonDB;
import View.*;

public class Cmenu implements ActionListener {
	
	private final Vmenu vm;
	private final AdmonDB db;
	
	public Cmenu(Vmenu vm, AdmonDB db) {
		this.vm = vm;
		this.db = db;
		
		this.vm.buttonPRD(PRD);
		this.vm.buttonPAN(PAN);
		this.vm.buttonPRI(PRI);
		
		this.vm.buttonRVotes(count);
		this.vm.buttonGBars(gBars);
		this.vm.buttonGPie(gPie);
	}
	
	@Override
	public void actionPerformed(ActionEvent ae) {
		System.out.println("Default");
	}
	
	ActionListener PRD = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e) {
			db.vote("PRD");
		}
	};
	
	ActionListener PAN = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e) {
			db.vote("PAN");
		}
	};
	
	ActionListener PRI = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e) {
			db.vote("PRI");
		} 
	};
	
	ActionListener count = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e) {
			Vdata vd = new Vdata();
			Cdata cd = new Cdata(vd, db);
			vd.setVisible(true);
		}
	};
	
	ActionListener gBars = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e) {
			Vgraphic1 vgr1 = new Vgraphic1();
			Cgraphic1 cgr1 = new Cgraphic1(vgr1, db);
			vgr1.setVisible(true);
		}
	};
	
	ActionListener gPie = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e) {
			Vgraphic2 vgr2 = new Vgraphic2();
			Cgraphic2 cgr2 = new Cgraphic2(vgr2, db);
			vgr2.setVisible(true);
		}
	};
	
}
