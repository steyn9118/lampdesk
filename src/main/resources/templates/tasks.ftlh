<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Lampdesk </title>
    <link rel="stylesheet" href="/static/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        .col-xs-4 {
            margin-right:0px;
            margin-left:0px;
            padding-right:0px;
            padding-left:0px;
        }
    </style>
</head>
<body>
<#import "/blocks/header.ftlh" as header>
<@header.header />
<h4 style="margin-left:30px;">Задачи</h4>
<hr>

<div class="container-fluid" style="margin-left: 0!important">
    <div class="row row-cols-5">
        <div class="col-xs-4">
            <ul style="list-style-type: none; left:300px;">
                <li><h4>Идеи</h4></li>
                <#list tasks as task>
                    <#if task.group == "idea">
                        <li style="margin-bottom:10px">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5>${task.name}</h5>
                                    <h6>Приоритет: ${task.priority}</h6>
                                    <p>${task.description}</p>
                                    <p>${task.getAssigneesAsString()}</p>
                                    <p>${task.getTagsAsString()}</p>
                                    <a class="btn btn-outline-info" role="button" href="/task/${task.ID}">Редактировать</a>
                                </div>
                            </div>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
        <div class="col-xs-4">
            <ul style="list-style-type: none;">
                <li><h4>Не назначены</h4></li>
                <#list tasks as task>
                    <#if task.group == "free">
                        <li style="margin-bottom:10px">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5>${task.name}</h5>
                                    <h6>Приоритет: ${task.priority}</h6>
                                    <p>${task.description}</p>
                                    <p>${task.getAssigneesAsString()}</p>
                                    <p>${task.getTagsAsString()}</p>
                                    <a class="btn btn-outline-info" role="button" href="/task/${task.ID}">Редактировать</a>
                                </div>
                            </div>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
        <div class="col-xs-4">
            <ul style="list-style-type: none;">
                <li><h4>В разработке</h4></li>
                <#list tasks as task>
                    <#if task.group == "wip">
                        <li style="margin-bottom:10px">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5>${task.name}</h5>
                                    <h6>Приоритет: ${task.priority}</h6>
                                    <p>${task.description}</p>
                                    <p>${task.getAssigneesAsString()}</p>
                                    <p>${task.getTagsAsString()}</p>
                                    <a class="btn btn-outline-info" role="button" href="/task/${task.ID}">Редактировать</a>
                                </div>
                            </div>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
        <div class="col-xs-4">
            <ul style="list-style-type: none;">
                <li><h4>На проверке</h4></li>
                <#list tasks as task>
                    <#if task.group == "pending">
                        <li style="margin-bottom:10px">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5>${task.name}</h5>
                                    <h6>Приоритет: ${task.priority}</h6>
                                    <p>${task.description}</p>
                                    <p>${task.getAssigneesAsString()}</p>
                                    <p>${task.getTagsAsString()}</p>
                                    <a class="btn btn-outline-info" role="button" href="/task/${task.ID}">Редактировать</a>
                                </div>
                            </div>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
        <div class="col-xs-4">
            <ul style="list-style-type: none;">
                <li><h4>Завершены</h4></li>
                <#list tasks as task>
                    <#if task.group == "done">
                        <li style="margin-bottom:10px">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <h5>${task.name}</h5>
                                    <h6>Приоритет: ${task.priority}</h6>
                                    <p>${task.description}</p>
                                    <p>${task.getAssigneesAsString()}</p>
                                    <p>${task.getTagsAsString()}</p>
                                    <a class="btn btn-outline-info" role="button" href="/task/${task.ID}">Редактировать</a>
                                </div>
                            </div>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
    </div>
</div>
<hr>
<a class="btn btn-success" href="/task/creation" role="button" style="margin-left:30px">Создать задачу</a>
</body>
</html>