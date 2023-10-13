<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Добавить задачу</title>
    <link rel="stylesheet" href="/static/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<#import "/blocks/header.ftlh" as header>
<@header.header />
<h3 style="margin-right:30px">Добавить задачу</h3>
<form action="/task/create" method="post">
    <select class="form-select form-select-lg mb-3" aria-label="Выбери статус">
        <option selected>Выбери статус</option>
        <option value="1">Идеи</option>
        <option value="2">Ожидают назначения</option>
        <option value="3">В разработке</option>
    </select>
    <div class="input-group mb-3">
        <span class="input-group-text" id="inputGroup-sizing-default">Название</span>
        <input type="text" class="form-control" aria-label="Название" aria-describedby="inputGroup-sizing-default">
    </div>
    <div class="input-group">
        <span class="input-group-text">Описаение</span>
        <textarea class="form-control" aria-label="Описание"></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Отправить</button>
</form>
<form action="/task/create" method="post">
    Название задачи: <input type="text" name="title"/><br><br>
    Описание задачи: <input type="text" name="description"/><br><br>
    Важность задачи: <input type="text" name="priority"/><br><br>
    Метки задачи: <input type="text" name="tags"/><br><br>
    <input type="submit" value="Добавить задачу"/>
</form>
</body>
</html>