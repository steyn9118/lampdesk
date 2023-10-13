<#macro header>
  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <span class="fs-4">LAMPDESK</span>
      </a>

      <ul class="nav nav-pills">
        <#if page??>
          <#if page == "home"><li class="nav-item"><a href="/" class="nav-link active" aria-current="page">Главная</a></li>
          <#else><li class="nav-item"><a href="/" class="nav-link" aria-current="page">Главная</a></li></#if>
          <#if page == "projects"><li class="nav-item"><a href="/projects" class="nav-link active" aria-current="page">Проекты</a></li>
          <#else><li class="nav-item"><a href="/projects" class="nav-link" aria-current="page">Проекты</a></li></#if>
          <#if page == "contracts"><li class="nav-item"><a href="/contracts" class="nav-link active" aria-current="page">Контракты</a></li>
          <#else><li class="nav-item"><a href="/contracts" class="nav-link" aria-current="page">Контракты</a></li></#if>
          <#if page == "tasks"><li class="nav-item"><a href="/tasks" class="nav-link active" aria-current="page">Задачи</a></li>
          <#else><li class="nav-item"><a href="/tasks" class="nav-link" aria-current="page">Задачи</a></li></#if>
        <#else>
          <li class="nav-item"><a href="/" class="nav-link" aria-current="page">Главная</a></li>
          <li class="nav-item"><a href="/projects" class="nav-link" aria-current="page">Проекты</a></li>
          <li class="nav-item"><a href="/contracts" class="nav-link" aria-current="page">Контракты</a></li>
          <li class="nav-item"><a href="/tasks" class="nav-link" aria-current="page">Задачи</a></li>
        </#if>
      </ul>
    </header>
  </div>
</#macro>