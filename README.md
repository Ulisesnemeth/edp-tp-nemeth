# Trabajo Práctico Final - Ulises Nemeth - Com 3

Requisitos: Tener instalado git y docker.

https://github.com/git-guides/install-git

https://docs.docker.com/engine/install/

Para comenzar, hay que clonar el repositorio de github en el directorio del usuario actual (:~$) con el comando:

```sh
$ git clone https://github.com/Ulisesnemeth/edp-tp-nemeth.git 
```

Después entramos al directorio:

```sh
$ cd ~/edp-tp-nemeth
```

![Screenshot_2022-08-08_19-28-23](https://user-images.githubusercontent.com/7307871/183525416-41954ead-00ed-44dc-b6a2-2d2d9de072aa.png)


Una vez tengamos el proyecto clonado podemos agregar arhivos de texto a /archivosdetexto, donde ya hay 6 archivos de prueba que subí anteriormente.

Luego para iniciar el programa con una imagen de docker, primero la creamos.

```sh
$ docker build . -t edp-tp-nemeth
```

Teniendo la imagen creada, hacemos:

```sh
$ docker run -it edp-tp-nemeth
```

Y el programa estará en ejecución, podemos elegir un archivo de texto ingresando el número que lo identifique.

![image](https://user-images.githubusercontent.com/7307871/183526767-736856bc-a7f2-47d7-bd08-aa40dc7c83a3.png)

Luego de tener el archivo de texto seleccionado podemos elegir el script deseado o volver a seleccionar otro archivo de texto.

![image](https://user-images.githubusercontent.com/7307871/183526823-f0bd59b1-4b38-4bfc-bc5e-478fcb7c3de8.png)
