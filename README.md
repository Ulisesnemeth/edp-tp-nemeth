# Trabajo Práctico Final
Para comenzar, hay que clonar el repositorio de github en el directorio /home con el comando:

$ git clone https://github.com/Ulisesnemeth/edp-tp-nemeth.git

Una vez tengamos el proyecto clonado en el directorio /home/edp-tp-nemeth podemos agregar arhivos de texto a /archivosdetexto, donde ya hay 6 archivos de prueba que subi anteriormente.

Luego para iniciar el programa con una imagen de docker, primero la creamos:

$ docker build . -t edp-tp-nemeth

Teniendo la imagen creada, hacemos:

$ docker run -it edp-tp-nemeth

Y el programa estará en ejecución.
