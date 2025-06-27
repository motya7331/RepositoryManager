# Начало работы с RepositoryManager

1. **Необходимое ПО**  
   **Среда разработки**  
   - **.NET 8 SDK**: Скачать и установить с [dotnet.microsoft.com](https://dotnet.microsoft.com/en-us/download/dotnet/8.0) для Windows 10+, macOS, Linux (Ubuntu 20.04, Debian, Fedora).  
   - **Visual Studio Code**: Скачать с [code.visualstudio.com](https://code.visualstudio.com) для Windows, macOS, Linux. Установить плагины: C#, GitLens, Markdown All in One, REST Client.  

   **Avalonia UI**  
   - Установить шаблоны: `dotnet new install Avalonia.Templates`.  
   - Создать проект: `dotnet new avalonia.app -o RepositoryManager`.  

   **Дополнительно**  
   - **Git**: Скачать с [git-scm.com](https://git-scm.com) (Windows/Linux) или установить через Homebrew на macOS (`brew install git`). Настроить: `git config --global user.name "Ваше Имя"`, `git config --global user.email "ваш@email.com"`.  
   - **Docker**: Установить с [docker.com](https://www.docker.com/products/docker-desktop) для Windows, macOS, Linux.  
   - **Postman**: Скачать с [postman.com](https://www.postman.com/downloads) для Windows, macOS, Linux.  
   - **Google Chrome / Firefox**: Установить с [google.com/chrome](https://www.google.com/chrome) или [mozilla.org/firefox](https://www.mozilla.org/firefox) для UI-тестов на Windows, macOS, Linux.  

2. **Зарегистрироваться в сервисах Git-платформ**  
   - **GitHub**: Создать аккаунт на [github.com](https://github.com). Получить OAuth-токен (Settings → Developer settings → Personal access tokens → Generate new token, scopes: `repo`, `admin:repo_hook`).  
   - **GitFlick**: Зарегистрироваться, получить API-ключ .  
   - **GitVerse**: Зарегистрироваться, получить API-ключ .  

3. **Установить зависимости проекта**  
   - **LibGit2Sharp**: Работа с Git (`dotnet add package LibGit2Sharp`).  
   - **Serilog**: Логирование (`dotnet add package Serilog`, `dotnet add package Serilog.Sinks.File`).  
   - **System.Text.Json**: JSON-сериализация (встроен в .NET 8.0).  
   - **Microsoft.Extensions.Logging**: Инфраструктура логов (`dotnet add package Microsoft.Extensions.Logging`).  
   - **System.Security.Cryptography**: Шифрование токенов (встроен в .NET 8.0).  
   - **xUnit**: Тестирование (`dotnet add package xUnit`).  
   - **Selenium.WebDriver**: UI-тесты (`dotnet add package Selenium.WebDriver`). Скачать [ChromeDriver](https://chromedriver.chromium.org) или [GeckoDriver](https://github.com/mozilla/geckodriver) для Windows, macOS, Linux и добавить в PATH.  
   - **Swashbuckle.AspNetCore**: Документация API (`dotnet add package Swashbuckle.AspNetCore`).  

4. **Первые шаги**  
   - Клонировать репозиторий: `git clone https://github.com/<владелец>/RepositoryManager.git`.  
   - Восстановить зависимости: `dotnet restore`.  
   - Настроить Docker: `docker build -t repository-manager .`.  
   - Запустить проект: `dotnet run`.  
   - Провести тесты на Windows и macOS:  
   - Юнит-тесты: `dotnet test` (xUnit, задачи 12, 14).  
   - UI-тесты: Запустить Selenium-скрипты для проверки интерфейса  в Chrome/Firefox.    
   - Вести документацию в GitHub Wiki.