package lampteam.lampdesk.services;

import lampteam.lampdesk.models.Task;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DataService {

    List<Task> tasks = new ArrayList<>();

    {
        tasks.add(new Task("pending", "На проверке", "Описание описание описание описание описание описание описание описание описание", "Низкая"));
        tasks.add(new Task("done", "Завершено", "Описание описание описание описание описание описание описание описание описание", "Низкая"));
        tasks.add(new Task("idea", "Идея", "Описание описание описание описание описание описание описание описание описание", "Низкая"));
        tasks.add(new Task("idea", "Идея", "Описание описание описание описание описание описание описание описание описание", "Низкая"));
        tasks.add(new Task("free", "Пробная задача", "Описание описание описание описание описание описание описание описание описание", "Низкая"));
        tasks.add(new Task("wip", "Жопа", "Описание описание описание описание описание описание описание описание описание", "Низкая"));
    }

    public List<Task> getTasks(){
        return tasks;
    }

    public Task getTaskByID(int id){
        for (Task task : tasks){
            if (task.getID() == id) return task;
        }
        return null;
    }

    public void addTask(Task task){
        tasks.add(task);
    }

    public void deleteTask(int ID){
        tasks.removeIf(task -> task.getID() == ID);
    }

}
