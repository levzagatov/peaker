zenity --info --text="Приветствую вас в Peaker! Мы установим всё необходимое для работы. Ну, почти всё." --title="Peaker" --ok-label="Спасибо, начнём!"
apt install chromium-browser -y || zenity --title="Peaker" --error  \
--text="Ошибка. Проверьте подключение к интернету. Не удалось установить Chromium." \
--ok-label="OK :(" #installing Chromium
apt install fish -y || zenity --title="Peaker" --error  \
--text="Ошибка. Проверьте подключение к интернету. Не удалось установить Fish." \
--ok-label="OK :(" #installing fish
apt install git && apt install curl && apt install cowsay && apt install sl && fish curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish 
fish fisher #installing other tools
bash echo """# Adaptive russian version of fish greeting by Lev Zagatov. Edited by Peaker.
SET __fish_init_2_39_8:\x1d
SET __fish_init_2_3_0:\x1d
SET fish_color_autosuggestion:555\x1ebrblack
SET fish_color_cancel:\x2dr
SET fish_color_command:\x2d\x2dbold
SET fish_color_comment:red
SET fish_color_cwd:green
SET fish_color_cwd_root:red
SET fish_color_end:brmagenta
SET fish_color_error:brred
SET fish_color_escape:bryellow\x1e\x2d\x2dbold
SET fish_color_history_current:\x2d\x2dbold
SET fish_color_host:normal
SET fish_color_match:\x2d\x2dbackground\x3dbrblue
SET fish_color_normal:normal
SET fish_color_operator:bryellow
SET fish_color_param:cyan
SET fish_color_quote:yellow
SET fish_color_redirection:brblue
SET fish_color_search_match:bryellow\x1e\x2d\x2dbackground\x3dbrblack
SET fish_color_selection:white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
SET fish_color_user:brgreen
SET fish_color_valid_path:\x2d\x2dunderline
SET fish_greeting:Приветствую\x20вас\x20в\x20fish\x2c\x20интерактивной\x20оболочке\x20командной\x20строки\x0aНапечатайте\x20\x1b\x5b32mhelp\x1b\x5bm\x20для\x20получения\x20помощи\x0aНапечатайте\x20\x1b\x5b32mpython3\x1b\x5bm\x20для\x20открытия\x20сессии\x20Python\x0aДля\x20установки\x20пакета\x20наберите\x1b\x5b32m\x20apt\x20install\x20<имя-пакета>\x1b\x5bm
SET fish_key_bindings:fish_default_key_bindings
SET fish_pager_color_completion:\x1d
SET fish_pager_color_description:B3A06D\x1eyellow
SET fish_pager_color_prefix:white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
SET fish_pager_color_progress:brwhite\x1e\x2d\x2dbackground\x3dcyan""" > /home/$USER/.config/fish/fishd.$HOSTNAME #tweaking fish greeting
apt install softmaker-freeoffice-2018 -y || zenity --title="Peaker" --error  \
--text="Ошибка. Проверьте подключение к интернету. Не удалось установить FreeOffice." \
--ok-label="OK :(" #installing SoftMaker FreeOffice
apt install kate -y || zenity --title="Peaker" --error  \
--text="Ошибка. Проверьте подключение к интернету. Не удалось установить Текстовый редактор Kate." \
--ok-label="OK :(" #installing KDE Kate
apt remove libreoffice -y && apt remove openoffice -y || zenity --title="Peaker" --error  \
--text="Ошибка. Не удалось удалить LibreOffice." \
--ok-label="OK :(" #removing LibreOffice or OpenOffice because FreeOffice installed
apt remove firefox -y || zenity --title="Peaker" --error  \
--text="Ошибка. Не удалось удалить Firefox." --ok-label="OK :(" #removing Firefox because Chromium installed
apt remove xed -y && apt remove emacs -y || zenity --title="Peaker" --error  \
--text="Ошибка. Не удалось удалить Текстовый редактор XED/Emacs." \
--ok-label="OK :(" #removing XED Text Editor or Emacs because Kate installed
apt-get update
apt-get upgrade
apt autoremove -y #cleaning cache, tmp files
zenity --title="Peaker" \
--info \
--text="Установка программ завершена." \
--title="Peaker" \
--ok-label="OK :)"
