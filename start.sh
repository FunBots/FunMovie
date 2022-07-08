if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FunBots/FunMovie.git /FunMovie
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FunMovie
fi
cd /FunMovie
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py