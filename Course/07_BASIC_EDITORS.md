![](../Images/header.jpg)

# 7 - EDITORES BÁSICOS

[Vídeo Clase 3 [30/07/2025]](https://www.twitch.tv/videos/2527141423)

> [!NOTE]
> 
> Para modificar archivos directamente desde la terminal.

## nano

* `nano nombre_archivo` abre el archivo (si no existe, lo crea).
* Editor fácil para principiantes.
* Los comandos aparecen listados en la parte inferior del editor: `^ = Ctrl/Cmd (en macOS)`.
* Puedes comenzar a escribir directamente y desplazarte con las flechas.

> [!NOTE]  
> 
> En macOS, `nano` en realidad abre `pico` por defecto, el editor original en el que está basado nano. 
> 
> Puedes instalar `nano` con `brew install nano` (recuerda reiniciar la terminal).

### Algunos atajos

*  Guardar cambios: `Ctrl/Cmd + O`, luego `Enter`
*  Salir: `Ctrl/Cmd + X` (si hay cambios sin guardar, preguntará)
*  Ayuda: `Ctrl/Cmd + G`
*  Buscar texto: `Ctrl/Cmd + W`
*  Cortar línea: `Ctrl/Cmd + K`
*  Pegar línea: `Ctrl/Cmd + U`

[nano](https://www.nano-editor.org/)

## vim

* `vim nombre_archivo` abre el archivo (si no existe, lo crea).
* Editor más avanzado, potente y personalizable, pero con una curva de aprendizaje pronunciada.

### Modos

* Normal: Para desplazarte.
* Inserción: Permite escribir texto.
* Comando: Para ejecutar comandos especiales durante el modo normal.

### Algunos atajos y comandos

* Activar modo *inserción*: `i` (si estás en modo *normal*).
* Activar modo *normal*: `Esc` (si estás en modo *inserción*).
* Atajos/Comandos básicos en modo *normal*:
	* `h j k l` o *flechas* para mover el cursor.
	* `:q` para salir.
	* `:wq` para guardar y salir.
	* `:q!` para salir sin guardar.
	* `/texto` para buscar.
	* `dd` para borrar la línea.
	* `yy` para copiar la línea.
	* `p` para pegar.
	* `u` para deshacer.

[vim](https://www.vim.org)

> [!IMPORTANT]  
> 
> vim es frecuentemente utilizado como editor de código/scripting. Otras opciones son [Neovim](https://neovim.io) o [Emacs](https://www.gnu.org/software/emacs).

> [!TIP]  
> 
> vim exige tiempo para aprender cómo funciona en profundidad, pero, una vez dominado, es extremadamente versátil.

---

[[◀️ Lección anterior](./06_ADVANCED_COMMANDS_EXERCISES.md)] [[Inicio 🔼](../README.md)] [[Siguiente lección ▶️](./08_BASIC_EDITORS_EXERCISES.md)]