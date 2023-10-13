package lampteam.lampdesk.models;

import lampteam.lampdesk.Utils;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Project {

    private int ID;
    private String name;
    private String description;
    private List<Contract> contracts;
    private Date whenStarted;

    public Project(String name){
        this.ID = Utils.getUniqueID();
        this.name = name;
    }

}
