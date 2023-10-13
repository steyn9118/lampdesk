package lampteam.lampdesk;

public class Utils {

    static private int lastID;

    public static int getUniqueID(){
        lastID++;
        return lastID;
    }

    public static void loadLastID(int newLastID){
        lastID = newLastID;
    }

}
