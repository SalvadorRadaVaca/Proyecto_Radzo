package Main;
import Controller.*;
import Model.AdmonDB;
import View.*;

public class MainExit {
	
	public static void main(String [] args) {
		
		AdmonDB db = new AdmonDB();
		Vmenu vm = new Vmenu();
		Cmenu cm = new Cmenu(vm, db);
	}
}
