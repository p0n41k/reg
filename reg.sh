# !/bin/bash



# Открываем браузер и производим регистрацию
xdotool mousemove 50 50 click 1
sleep 3
xdotool mousemove 3420 100 click 1
sleep 0.2
xdotool mousemove 3400 130 click 1 

# Ждем загрузки страницы
while true; do
  color=$(import -window root -crop 1x1+1900+900 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#0060DF" ]; then
  sleep 0.5
  break
  else
  sleep 0.5
  fi
done


# Пишем наш логин Firefox
xdotool key n
xdotool key u
xdotool key r

xdotool keydown Shift
xdotool key minus
xdotool keyup Shift

xdotool key e
xdotool key r
xdotool key b
xdotool key o
xdotool key l

xdotool keydown Shift
xdotool key minus
xdotool keyup Shift

xdotool key 2
xdotool key 0
xdotool key 0
xdotool key 2

xdotool keydown Shift
xdotool key 2
xdotool keyup Shift

xdotool key m
xdotool key a
xdotool key i
xdotool key l
xdotool key period
xdotool key r
xdotool key u
xdotool key Return

sleep 1.5

# Вводим пароль от аккаунта FireFox
xdotool key 3
xdotool key 2
xdotool key 4
xdotool key 6
xdotool key 2
xdotool key 5

xdotool keydown Shift
xdotool key d
xdotool keyup Shift

xdotool key o
xdotool key m
xdotool key Return

# Днлаем закладки браузера видмыми
xdotool keydown Shift
xdotool key ctrl+b
xdotool keyup Shift

# Создаем новый SSH ключ, включаем wifi, прописываем git config-и
mkdir -p ~/.ssh
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ''
cat ~/.ssh/id_ed25519.pub
git config --global user.name "ynurmakh"
git config --global user.email "nur_erbol_2002@mail.ru"
nmcli device wifi hotspot ifname wlp0s20f3 ssid "@lem" password "080512@lem"

# Создаем новую вкладку и вставляем ссыку на 01.alem (3 сточка) 
xdotool key F6
xdotool key 0
xdotool key 1
xdotool key period
xdotool key a
xdotool key l
xdotool key e
xdotool key m
xdotool key period
xdotool key s
xdotool key c
xdotool key h
xdotool key o
xdotool key o
xdotool key l
xdotool key Return
# sleep 2.5


# Ждем прогрузки сайта

while true; do
  color=$(import -window root -crop 1x1+2500+500 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#292929" ]; then
  sleep 0.5
  break
  else
  sleep 0.5
  fi
done


xdotool mousemove 2500 500 click 1

xdotool key n
xdotool key u
xdotool key r

xdotool keydown Shift
xdotool key minus
xdotool keyup Shift

xdotool key e
xdotool key r
xdotool key b
xdotool key o
xdotool key l

xdotool keydown Shift
xdotool key minus
xdotool keyup Shift

xdotool key 2
xdotool key 0
xdotool key 0
xdotool key 2

xdotool keydown Shift
xdotool key 2
xdotool keyup Shift

xdotool key m
xdotool key a
xdotool key i
xdotool key l
xdotool key period
xdotool key r
xdotool key u

# Переходим на поле для пароля и вводим пароль
xdotool key Tab

xdotool key 3
xdotool key 2
xdotool key 4
xdotool key 6
xdotool key 2
xdotool key 5

xdotool keydown Shift
xdotool key d
xdotool keyup Shift

xdotool key o
xdotool key m

xdotool keydown Shift
xdotool key 2
xdotool keyup Shift
xdotool key Return

# Открываем новую строку и переходим в GitAlem
xdotool key ctrl+t
sleep 0.1
xdotool key 0
xdotool key 1
xdotool key period
xdotool key a
xdotool key l
xdotool key e
xdotool key m
xdotool key period
xdotool key s
xdotool key c
xdotool key h
xdotool key o
xdotool key o
xdotool key l
xdotool key slash
xdotool key g
xdotool key i
xdotool key t
xdotool key slash
xdotool key u
xdotool key s
xdotool key e
xdotool key r
xdotool key slash
xdotool key s
xdotool key e
xdotool key t
xdotool key t
xdotool key i
xdotool key n
xdotool key g
xdotool key s
xdotool key slash
xdotool key k
xdotool key e
xdotool key y
xdotool key s
xdotool key Return

# Ждем прогрузкий сайта, регаемся, удаляем старый SSH, копируем новый и вставляем его
while true; do
  color=$(import -window root -crop 1x1+1800+320 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#AFAFAF" ]; then
  break
  else
  sleep 0.5
  fi
done
xdotool mousemove 1800 320 click 1

while true; do
  color=$(import -window root -crop 1x1+2150+420 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#DB2828" ]; then
  break
  else
  sleep 0.5
  fi
done
xdotool mousemove 2150 420 click 1
sleep 0.5
xdotool mousemove 2100 900 click 1
sleep 0.5
xdotool mousemove 2300 400 click 1
sleep 0.5
xdotool key Tab
xdotool key Tab

cd
xdotool mousemove 50 200 click 1
clear
cat .ssh/id_ed25519.pub
xdotool mousemove 1500 320 click 1
xdotool mousemove 1500 320 click 1
xdotool mousemove 1500 320 click 1

xdotool keydown Shift
xdotool key ctrl+c
xdotool keyup Shift
xdotool key Alt+F4
# xdotool key

# xdotool mousemove 50 50 click 1

# xdotool key ctrl+v

# xdotool mousemove 1250 720 click 1

# xdotool mousemove 50 200 click 1

# sleep 0.5

# # Включаем Num Lock
# xdotool key Num_Lock

# # Добавляем русскую раскладку
# xdotool mousemove 50 600 click 1
# sleep 1 
# xdotool key l
# xdotool key a
# xdotool key n
# sleep 0.5
# xdotool mousemove 1400 500 click 1
# sleep 0.5
# xdotool mousemove 1700 700 click 1
# sleep 0.5
# xdotool mousemove 1700 750 click 1
# sleep 0.1
# xdotool mousemove 1700 790 click 1
# sleep 0.1
# xdotool mousemove 1850 580 click 1
# sleep 0.1
# xdotool key Alt+F4

# sleep 0.5

# gnome-terminal



# sleep 0.5


# xdotool key g
# xdotool key i
# xdotool key t
# xdotool key space
# xdotool key c
# xdotool key l
# xdotool key o
# xdotool key n
# xdotool key e
# xdotool key space
# xdotool key g
# xdotool key i
# xdotool key t
# xdotool keydown Shift
# xdotool key 2
# xdotool keyup Shift
# xdotool key g
# xdotool key i
# xdotool key t
# xdotool key period
# xdotool key 0
# xdotool key 1
# xdotool key period
# xdotool key a
# xdotool key l
# xdotool key e
# xdotool key m
# xdotool key period
# xdotool key s
# xdotool key c
# xdotool key h
# xdotool key o
# xdotool key o
# xdotool key l
# xdotool key colon
# xdotool key y
# xdotool key n
# xdotool key u
# xdotool key r
# xdotool key m
# xdotool key a
# xdotool key k
# xdotool key h
# xdotool key slash
# xdotool key g
# xdotool key o
# xdotool key r
# xdotool key e
# xdotool key l
# xdotool key o
# xdotool key a
# xdotool key d
# xdotool key period
# xdotool key g
# xdotool key i
# xdotool key t
# xdotool key Return

# sleep 2
# xdotool key y
# xdotool key e
# xdotool key s
# xdotool key Return
# sleep 2
# xdotool key ctrl+c
# xdotool key ctrl+c
# xdotool key ctrl+c
# sleep 0.5

# xdotool key Alt+F4




# xdotool mousemove 50 550 click 1

# while true; do
#   color=$(import -window root -crop 1x1+1650+630 -depth 8 txt:- | awk 'NR==2 {print $3}')
#   if [ "$color" == "#2C2C2C" ]; then
#   break
#   else
#   sleep 0.1
#   fi
# done

# xdotool key KP_Subtract
# xdotool key KP_Add
# xdotool key KP_Subtract
# xdotool key KP_Add
# xdotool key Return
# # sleep 0.1
# xdotool key KP_Subtract
# xdotool key KP_Add
# xdotool key KP_Subtract
# xdotool key KP_Add
# xdotool key Return

# while true; do
#   color=$(import -window root -crop 1x1+1600+630 -depth 8 txt:- | awk 'NR==2 {print $3}')
#   if [ "$color" == "#2C2C2C" ]; then
#   break
#   else
#   sleep 0.1
#   fi
# done

# xdotool key Alt+F4



# code goreload/
