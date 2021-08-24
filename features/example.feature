Feature: Creating resume on http://resumesimple.dev.hsworld.ru
  Scenario: Log in and create resume
    Given visit "http://resumesimple.dev.hsworld.ru"
    When button "Войти" is pressed
    And login and password are entered
      |Логин              |Пароль         |
      |lakiwolf.90@mail.ru|wWjf54W4PNZLEvj|
    And button in dialog "Войти" is pressed
    And button or link "Конструктор резюме" is pressed
    And main information fields are filled
      |Название резюме|Имя |Фамилия|Отчество|Город |Номер телефона|Email         |Skype     |Telegram     |О себе            |
      |Резюме 1       |Петр|Петров |Петрович|Бишкек|+996556120732 |petrov@mail.ru|petr_skype|petr_telegram|Я хороший работник|
    And button "Далее" is pressed
    And education is added
      |Уровень образования|Название учебного заведения|Специальность|Год выпуска|
      |Высшее             |КГТУ                       |Экономист    |2000       |
    And additional education is added
      |Компания проводящая курс|Название курса|Год окончания|
      |Sun rise                |Tester        |2000         |
    And button "Далее" is pressed
    And button "Добавить работу" is pressed
    And job is added
      |Название компании|Должность  |Время начала работы|Время окончания работы|Достижения|Обязанности      |Задачи            |Навыки              |
      |Кока-Кола        |Супервайзер|012000             |012020                |Чемпион   |Работа с командой|Обучение персонала|проведение тренингов|
    And button "Сохранить" is pressed

    And some information is displayed
      |Название резюме|Имя |Фамилия|Отчество|Город |Номер телефона     |Email         |Skype     |Telegram     |О себе            |
      |Резюме 1       |Петр|Петров |Петрович|Бишкек|+7 (996) 556-12-07 |petrov@mail.ru|petr_skype|petr_telegram|Я хороший работник|
    And some information is displayed
      |Уровень образования|Название учебного заведения|Специальность|Год выпуска|
      |Высшее             |КГТУ                       |Экономист    |2000       |
    And some information is displayed
      |Компания проводящая курс|Название курса|Год окончания|
      |Sun rise                |Tester        |2000         |
    And some information is displayed
      |Название компании|Должность  |Время начала работы|Время окончания работы|Достижения|Задачи            |Навыки              |
      |Кока-Кола        |Супервайзер|01.2000            |01.2020               |Чемпион   |Обучение персонала|проведение тренингов|