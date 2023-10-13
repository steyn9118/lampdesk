package lampteam.lampdesk.repositories;

import lampteam.lampdesk.models.Project;
import lampteam.lampdesk.models.Task;

import java.util.List;

public class TasksRepo {

    private List<Task> tasks;

    public Task getTaskByName(String name){
        for (Task task : tasks){
            if (task.getName().equals(name)){
                return task;
            }
        }
        return null;
    }

}
