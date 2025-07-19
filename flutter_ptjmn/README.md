# Instrucciones para ejecutar la aplicación

1. **Instala Flutter**  
    Descarga e instala Flutter desde [flutter.dev](https://flutter.dev/docs/get-started/install).

2. **Clona el repositorio**  
    ```bash
    git clone <https://github.com/JonathanMN145/PruebaFlutterJMN.git>
    cd flutter_ptjmn
    ```

3. **Instala dependencias**  
    Ejecuta: 
    ```bash
    flutter pub get
    ```

4. **Ejecuta la aplicación**  
    Conecta un dispositivo o inicia un emulador, luego ejecuta:
    ```bash
    flutter run
    ```
    Igual lo puede depurar tanto como emulador o web

---

## Proceso de desarrollo

- Utilicé la libreria de Rick and Morty por su facilidad.
- La estructura sigue el patrón estándar de Flutter: separación en carpetas `lib`, `assets`, y `test`.
- Para la gestión de estado, elegí **Provider** por su simplicidad y escalabilidad.
- Se priorizó la legibilidad del código y la modularidad de los componentes.

---

## Decisiones técnicas

- **Provider** para el estado global.
- **Material Design** para la interfaz.
- Organización en widgets reutilizables.
- Uso de rutas nombradas para la navegación.

---
