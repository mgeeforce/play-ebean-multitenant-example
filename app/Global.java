/**
 * @author mike
 *
 */
import play.*;
import master.Tenant;


public class Global extends GlobalSettings {
    
    public void onStart(Application app) {
    	Logger.info("in Global.onStart");
    	
    	if (Tenant.find.all().size() < 2) {

    		Tenant tenant1 = new Tenant();
    		tenant1.setDatabaseName("tenant1");
    		tenant1.setDatabaseUser("mtenant");
    		tenant1.setDatabasePassword("mtenant");
    		tenant1.save();

    		Tenant tenant2 = new Tenant();
    		tenant2.setDatabaseName("tenant2");
    		tenant2.setDatabaseUser("mtenant");
    		tenant2.setDatabasePassword("mtenant");
    		tenant2.save();
    	
    	}
    }
}