package lampteam.lampdesk.models;

import lombok.Data;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@Data
public class TaskUpdater {

    private String title;
    private String description;
    private String priority;
    private List<String> tags;

    public TaskUpdater(String title, String description, String priority, String tags){
        this.title = title;
        this.description = description;
        this.priority = priority;
        if (!Objects.equals(tags, "")) this.tags = Arrays.stream(tags.split(",")).toList();
    }

}
