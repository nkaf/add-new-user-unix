#!/bin/bash
 
# Запрос имени пользователя
read -p "Enter username: " username
 
# Создание пользователя
sudo useradd -m -s /bin/bash $username
 
# Запрос на установку пароля
sudo passwd $username
 
# Создание директории .ssh
sudo mkdir /home/$username/.ssh
 
# Запрос на добавление публичного ключа
read -p "Do you want to add an ssh public key to authorized_keys? (y/n) " add_key
 
if [[ $add_key == "y" || $add_key == "Y" ]]; then
    read -p "Enter public key: " ssh_key
    echo $ssh_key | sudo tee -a /home/$username/.ssh/authorized_keys > /dev/null
fi
 
# Запрос на добавление пользователя в группу sudo
read -p "Do you want to add $username to sudo group? (y/n) " add_sudo
 
if [[ $add_sudo == "y" || $add_sudo == "Y" ]]; then
    sudo usermod -aG sudo $username
fi
 
# Установка прав на директорию SSH для пользователя
sudo chmod 700 /home/$username/.ssh
sudo chmod 600 /home/$username/.ssh/authorized_keys
sudo chown -R $username:$username /home/$username/.ssh
 
echo "User $username created successfully!"
