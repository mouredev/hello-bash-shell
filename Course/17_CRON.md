`![](../Images/header.jpg)

# 17 - CRON

[Vídeo Clase 5 [14/08/2025]](https://www.twitch.tv/videos/2539985093)

## Explorador de archivos

Abre el explorador de archivos del sistema en la ruta en la que nos encontremos desde Bash.

* Linux `xdg-open .`
* macOS `open .`
* Windows `explorer .`

## Crontab

Cron es un demonio (demon) del sistema que permite ejecutar tareas programadas automáticamente. Siempre está corriendo en segundo plano. De esta forma, una vez configurado, el sistema ejecuta las tareas sin que el usuario tenga que intervenir.

> [!NOTE] 
>  
> Cron utiliza tablas llamadas `crontab`. Pueden existir crontab a nivel de usuario y de sitema a nivel global (*/etc/crontab*).

* `crontab -e`	edita tu tabla de cron
* `crontab -l`	lista tus tareas programadas
* `crontab -r`	elimina tu tabla de cron actual

## Sintaxis crontab

Cada línea de `crontab` representa una tarea programada.

┌───────── minuto (0-59)  
│ ┌─────── hora (0-23)  
│ │ ┌───── día del mes (1-31)  
│ │ │ ┌─── mes (1-12)  
│ │ │ │ ┌─ día de la semana (0-6, 0=domingo)  
│ │ │ │ │  
`* * * * *  comando_a_ejecutar`

> [!TIP]
> 
> Ejecuta primero de manera la manuel el comando para comprobar que funciona y que tienes los permisos adecuados.

> [! CAUTION]
> 
> Si el comando a ejecutar es un script, utiliza su ruta absoluta.

### Ejemplos de sintaxis

* `30 2 * * *` se ejecuta todos los días a las 2:30 AM
* `*/5 * * * *` se ejecuta cada 5 minutos
* `0 9 * * 1` se ejecuta cada lunes a las 9:00 AM
* `0 0 1 * *` se ejecuta cada inicio de mes a medianoche

## Comodines

* `*`: Cualquier valor (`* * * * *` se ejecutará cada minuto).
* `,`: Lista de valores (`0 8,12 * * *` se ejecutará a las 8 y a las 12).
* `-`: Rango de valores (`0 9-17 * * 1-5` se ejecutará cada horas entre las 9 y las 17 inclusive de lunes a viernes).
* `/`: Frecuencia (`*/10 * * * *` se ejecutará cada 10 minutos).

---

[[◀️ Lección anterior](./16_LOGIC_EXERCISES.md)] [[Inicio 🔼](../README.md)] [[Siguiente lección ▶️](./18_CRON_EXERCISES.md)]