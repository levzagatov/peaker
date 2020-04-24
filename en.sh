zenity --info --text="Welcome to Peaker! We will install must have programs." --title="Peacker" --ok-label="Start!"
apt install chromium-browser -y || zenity --title="Peaker" --error  \
--text="Error while installing Chromium. Please check internet connection." \
--ok-label="OK :(" #installing Chromium
apt install fish -y || zenity --title="Peaker" --error  \
--text="Error while installing Fish. Please check internet connection." \
--ok-label="OK :(" #installing fish
apt install git && apt install curl && apt install cowsay && apt install bsdgames && apt install sl && fish curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish 
fish fisher #installing other tools
bash echo """# Adaptive version of fish greeting by Lev Zagatov. Edited by Peaker.
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
SET fish_greeting:Welcome\20to\20fish,\20the\20\x1b\x5b32mf\x1b\x5bm\riendly\20\x1b\x5b32mi\x1b\x5bm\nteractive\20\x1b\x5b32msh\x1b\x5bm\ell
Type\20\x1b\x5b32mhelp\x1b\x5bm\x20for\20help\x0aType\x20\x1b\x5b32mpython3\x1b\x5bmto\20open\20Python\20interactive\20session\x0aTo\20install\20package\20type\20\x1b\x5b32mapt\x20install\x20<name-of-package>\x1b\x5bm
SET fish_key_bindings:fish_default_key_bindings
SET fish_pager_color_completion:\x1d
SET fish_pager_color_description:B3A06D\x1eyellow
SET fish_pager_color_prefix:white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
SET fish_pager_color_progress:brwhite\x1e\x2d\x2dbackground\x3dcyan""" > /home/$USER/.config/fish/fishd.$HOSTNAME #tweaking fish greeting
apt install softmaker-freeoffice-2018 -y || zenity --title="Peaker" --error  \
--text="Error while installing FreeOffice. Please check internet connection." \
--ok-label="OK :(" #installing SoftMaker FreeOffice
apt install kate -y || zenity --title="Peaker" --error  \
--text="Error while installing Kate text editor. Please check internet connection." \
--ok-label="OK :(" #installing KDE Kate
apt remove libreoffice -y && apt remove openoffice || zenity --title="Peaker" --error  \
--text="Error while removing LibreOffice/OpenOffice." \
--ok-label="OK :(" #removing LibreOffice or OpenOffice because FreeOffice installed
apt remove firefox -y || zenity --title="Peaker" --error  \
--text="Error while removing Firefox." \ 
--ok-label="OK :(" #removing Firefox because Chromium installed
apt remove xed -y && apt remove emacs -y || zenity --title="Peaker" --error  \
--text="Error while removing text editor." \
--ok-label="OK :(" #removing XED Text Editor or Emacs because Kate installed
apt-get update
apt-get upgrade
apt autoremove -y #cleaning cache, tmp files
zenity --title="Peaker" \
--info \
--text="All programs are installed." \
--title="Peaker" \
--ok-label="OK, thanks :)"
