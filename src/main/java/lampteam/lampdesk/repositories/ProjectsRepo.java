package lampteam.lampdesk.repositories;

import lampteam.lampdesk.models.Project;

import java.util.List;

public class ProjectsRepo {

    private List<Project> projects;

    public Project getProjectByName(String name){
        for (Project project : projects){
            if (project.getName().equals(name)){
                return project;
            }
        }
        return null;
    }

    public List<Project> getProjects() {
        return projects;
    }
}
