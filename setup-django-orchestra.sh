python3 -m venv env/orchestra
source env/orchestra/bin/activate

# BUG FIX: anyjson uses use_2to3 binary to setup. SetupTools causes this problem, the solution is downgrade setup tools in this env
# pip install --upgrade setuptools==57.5.0

pip install -r django-orchestra/requirements.txt
pip install -e django-orchestra
orchestra-admin startproject panel

cd panel
python manage.py migrate
exit 0