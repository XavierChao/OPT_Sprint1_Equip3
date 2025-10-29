# OPT_Sprint1_Equip3

Instrucciones sencillas para iniciar los contenedores con Docker / Docker Compose.

Archivos incluidos en este repositorio:

- `docker-compose.yaml`
- `dockerfile`

Pasos rápidos

1) Iniciar los contenedores (en segundo plano):

```bash
docker compose up -d
# Si tu sistema usa la versión vieja de Docker Compose usa:
# docker-compose up -d
```

2) Ver los logs en tiempo real:

```bash
docker compose logs -f
# Para ver un servicio en particular:
# docker compose logs -f <nombre_servicio>
```

3) Parar y eliminar contenedores, redes y volúmenes creados por Compose:

```bash
docker compose down
# o docker-compose down
```

Notas

- Asegúrate de tener instalados Docker y Docker Compose.
- `docker compose` es la sintaxis preferida si tienes Docker Compose v2.
- Para forzar reconstrucción de imágenes antes de iniciar:

```bash
docker compose build --no-cache
docker compose up -d --force-recreate
```

Si necesitas instrucciones adicionales (p. ej. nombres de servicios, variables de entorno), dime qué quieres documentar y lo añado.