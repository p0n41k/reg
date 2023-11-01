while true; do
  xdotool mousemove 100 500
  color=$(import -window root -crop 101x501+1x1 -depth 8 txt:- | grep 100,500 | awk '{print $3}'
)
  if [ "$color" == "#FFFFFF" ]; then
    echo "nashel ffffff"
    break
  else
  sleep 1
  echo "sleep"
  fi
done

echo "tut"