echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/henockjoy65/FTstreambot /FTstreambot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/henockjoy65/FTstreambot -b $BRANCH /FTstreambot
fi
cd /FTstreambot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
