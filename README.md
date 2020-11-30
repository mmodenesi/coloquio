### build

```console
docker build --tag fisica:latest .
```

### run

Reemplazar `$(pwd)` con el path absoluto al directorio que contiene los archivos que quiero editar
(o un directorio vacío, en todo caso). Los archivos modificados / creados en el contenedor se "ven"
en ese directorio del host.

```console
docker run \
    --name fisica \
    --publish 8888:8888 \
    --volume $(pwd):/workspace \
    fisica:latest
```
