# django musician (Frontend)
python3 -m venv env/musician
source env/musician/bin/activate

cd django-musician
pip install -r requirements.txt

cp .env.example .env
sed -i 's/https:\/\/api.examplea.org/http:\/\/127.0.0.1:9999\/api/g' .env
echo "STATIC_ROOT=/tmp/" >> .env

python manage.py migrate
exit 0