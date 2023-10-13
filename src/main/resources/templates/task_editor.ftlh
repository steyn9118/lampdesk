<!DOCTYPE html>
<html>
<head>
    <title> Desk </title>
	<link rel="stylesheet" href="/static/css/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<#import "/blocks/header.ftlh" as header>
<@header.header />
<h1> Lampdesk </h1><hr>
<h4>Редактор задачи</h4>
<b>Название задачи - </b>${task.name}<br>
<b>Описание задачи - </b>${task.description}<br>
<b>Важность задачи - </b>${task.priority}<br>
<b>Исполнители задачи: </b>${task.getAssigneesAsString()}<br>
<b>Тэги задачи: </b>${task.getTagsAsString()}<br>
<hr>
<h3>
<form action="/task/edit/${task.ID}" method="post">
	<h5>Новое название задачи:</h5> <input type="text" name="title"/><br><br>
	<h5>Новое описание задачи:</h5> <input type="text" name="description"/><br><br>
	<h5>Новая важность задачи:</h5> <input type="text" name="priority"/><br><br>
	<h5>Новые метки задачи:</h5> <input type="text" name="tags"/><br><br>
	<input type="submit" value="Обновить задачу"/>
</form>
</h3>
</body>
</html>