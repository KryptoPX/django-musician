sudo apt update -y
sudo apt upgrade -y
apt=(
    git
    python3-pip
    python3-venv
)
sudo apt-get install --no-install-recommends -y ${apt[@]}
python3 -m pip install --upgrade pip

pip3 install wheel

git clone https://github.com/KryptoPX/django-musician
git clone https://github.com/ribaguifi/django-orchestra

if [ -d "./env/orchestra" ]; then
  echo "> skipping installing django-orchestra"
else
  echo "> Installing django-orchestra"
  bash setup-django-orchestra.sh
fi

if [ -d "./env/musician" ]; then
  echo "> skipping installing django-musician"
else
  echo "> Installing django-musician"
  bash setup-django-musician.sh
fi

echo "> SCRIPT TERMINADO <"