# Создание нового пользователя в Linux с помощью интерактивного скрипта

Этот проект представляет собой интерактивный bash скрипт, который позволяет создать нового пользователя в Linux с домашней директорией в `/home` и настроить несколько опций, таких как добавление публичного ключа SSH и назначение пользователя в группу sudo. 

## Использование

1. Клонируйте этот репозиторий на свой локальный компьютер.
2. Откройте терминал и перейдите в папку, где вы склонировали репозиторий.
3. Запустите скрипт `adduser.sh`, чтобы начать интерактивный процесс создания нового пользователя.
4. Следуйте инструкциям в терминале: введите имя пользователя, добавьте публичный ключ SSH, назначьте пользователя в группу sudo и т.д.
5. Когда вы закончите ввод данных, скрипт создаст нового пользователя с указанными параметрами.

## Особенности

Настройки, доступные во время работы скрипта:

- Установка пароля нового пользователя
- Добавление публичного ключа SSH в файл `authorized_keys`
- Назначение пользователя в группу sudo

Также скрипт автоматически:

- Создает новую директорию `.ssh` в домашней директории пользователя
- Устанавливает права 700 на директорию `.ssh`
- Устанавливает права 600 на файл `authorized_keys`
- Устанавливает владельца директории `.ssh` в качестве нового пользователя

После запуска скрипта в терминале отображаются сообщения об успешном или неудачном создании пользователя.

## Предварительные требования

Для работы этого скрипта вам потребуется:

- Linux-система с установленным интерпретатором bash
- Разрешения на выполнение скрипта

## Лицензия

Этот проект находится под лицензией MIT. Вы можете использовать, копировать, изменять, объединять, публиковать, распространять, продавать копии программы или ее частей без ограничений. 

## Автор

Этот интерактивный bash скрипт был написан Nikolai Kaf-Shnaider.
