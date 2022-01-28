# Entorno de desarollo para rivaguifi

Este entorno de desarollo, es usado para contenedores DOCKER acompañado de VSCode

more info: https://code.visualstudio.com/docs/remote/containers#_getting-started

> ATENCIÓN: No se instala virtualenv en este entorno porque se deduce que esto se va a ejecutar en un contenedor de docker

pasos para montar el server: ejecuta `run_this.sh`

una vez terminado el comando, crea dos terminales nuevas y ejecuta estos comandos en cada terminal

```bash
source env/orchestra/bin/activate
cd panel
python manage.py runserver 9999
```

```bash
source env/musician/bin/activate 
cd django-musician 
python manage.py runserver 8080
```