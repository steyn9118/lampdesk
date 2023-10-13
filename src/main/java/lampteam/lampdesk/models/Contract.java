package lampteam.lampdesk.models;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Contract {

    private String name;
    private String description;
    private List<Task> tasks;
    private float price;
    private float difficulty;
    private Date deadline;

}
