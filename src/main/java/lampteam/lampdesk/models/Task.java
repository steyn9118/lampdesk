package lampteam.lampdesk.models;

import lampteam.lampdesk.Utils;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Task {

    private Integer ID;
    private String group;
    private String name;
    private String description;
    private String priority;
    private List<String> assignees = new ArrayList<>();
    private List<String> tags = new ArrayList<>();

    public Task(String group, String name, String description, String priority){
        this.group = group;
        this.ID = Utils.getUniqueID();
        this.name = name;
        this.description = description;
        this.priority = priority;
    }

    public String getAssigneesAsString() {
        if (assignees.size() == 0) return "Исполнители не заданы";
        StringBuilder asString = new StringBuilder();
        for (String assignee : assignees){
            asString.append(assignee);
            asString.append(", ");
        }
        asString.append(";");
        return asString.toString();
    }

    public String getTagsAsString() {
        if (tags.size() == 0) return "Метки не заданы";
        StringBuilder asString = new StringBuilder();
        for (String tag : tags){
            asString.append(tag);
            asString.append(", ");
        }
        asString.append(";");
        return asString.toString();
    }
}
