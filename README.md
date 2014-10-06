Лабораторная работа 2. Вариант 10: Сайт с расписанием занятий студентов. 
=====

Постановка задачи
-----------------

Нужно реализовать веб-приложение на тему в соответствии с вариантом задания (Расписание занятий). Технологии, которые нужно использовать: 

- фреймворк Ruby On Rails
- ХД *mysql* или postgresql

Деплой приложения
-------

1. Загрузить проект из репозитория git:

  ```
  git clone https://github.com/akonit/lab_2.git
  ```
2. Перейти в директорию проекта:

  ```
  cd lab_2
  ```
3. Выполнить следующую команду:

  ```
  bundle install
  ```

4. Создать базу данных для приложения:

  ```
  mysql -u root -p < db/db.sql
  rake db:migrate
  ```

5. Поднять сервер:

  ```
  rails server
  ```
6. Перейти по следующему адресу:

  http://localhost:3000

7. Действия по редактированию данных доступны только администратору. Логин - **admin**, пароль - **admin**. Работа с группами доступна при просмотре факультетов, работа с парами - при просмотре групп.
