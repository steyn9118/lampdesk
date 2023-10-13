package lampteam.lampdesk.controllers;

import lampteam.lampdesk.models.Task;
import lampteam.lampdesk.models.TaskUpdater;
import lampteam.lampdesk.services.DataService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Objects;

@Controller
@RequiredArgsConstructor
public class PageController {

    private final DataService taskService;

    @GetMapping("/")
    public String desk(Model model){
        model.addAttribute("page", "home");
        model.addAttribute("tasks", taskService.getTasks());
        return "homepage";
    }

    @GetMapping("/tasks")
    public String tasks(Model model){
        model.addAttribute("page", "tasks");
        model.addAttribute("tasks", taskService.getTasks());
        return "tasks";
    }

    @GetMapping("/task/{id}")
    public String editTask(@PathVariable String id, Model model){
        model.addAttribute("task", taskService.getTaskByID(Integer.parseInt(id)));
        return "task_editor";
    }

    @GetMapping("/task/creation")
    public String taskCreation(Model model){
        return "task_adder";
    }

    @GetMapping("/contracts")
    public String contracts(Model model){
        model.addAttribute("page", "contracts");
        return "contracts";
    }

    @GetMapping("/projects")
    public String projects(Model model){
        model.addAttribute("page", "projects");
        return "projects";
    }

    @PostMapping("/task/create")
    public String createTask(Task task){
        if (Objects.equals(task.getName(), "")){
            return "redirect:/tasks";
        }
        taskService.addTask(task);
        return "redirect:/tasks";
    }

    @PostMapping("/task/delete/{id}")
    public String deleteTask(@PathVariable int id){
        taskService.deleteTask(id);
        return "redirect:/tasks";
    }

    @PostMapping("/task/edit/{id}")
    public String editTask(@PathVariable int id, TaskUpdater updater){
        Task currentTask = taskService.getTaskByID(id);
        if (!Objects.equals(updater.getTitle(), "")) currentTask.setName(updater.getTitle());
        if (!Objects.equals(updater.getDescription(), "")) currentTask.setDescription(updater.getDescription());
        if (!Objects.equals(updater.getPriority(), "")) currentTask.setPriority(updater.getPriority());
        if (updater.getTags() != null) currentTask.setTags(updater.getTags());
        return "redirect:/";
    }
}
