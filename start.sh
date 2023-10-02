if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akrtechi/VikramTG2.git /VikramTG2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VikramTG2
fi
cd /VikramTG2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
