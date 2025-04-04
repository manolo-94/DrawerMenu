# DrawerMenu

#  Esta app implementa un menú tipo hamburguesa personalizable, ideal como base para otros desarrolladores que deseen integrar navegación lateral en sus propias apps iOS.

# 🧠 ¿Cómo funciona la lógica del menú tipo hamburguesa?
La app usa un enfoque sencillo y escalable para el menú lateral (Side Menu):

Se utiliza una propiedad @State llamada isMenuOpen para controlar la visibilidad del menú.
El menú se posiciona con .offset(x:) y se oculta/desplaza dinámicamente según el ancho de la pantalla usando GeometryReader, asegurando compatibilidad con cualquier dispositivo.
El contenido principal se envuelve dentro de un ZStack, permitiendo superponer el menú detrás del contenido principal cuando está cerrado.
Se utiliza una vista SideMenuView que contiene un listado de opciones de menú (MenuOption enum) y una vista SideMenuRow para renderizar cada ítem de manera limpia.
La navegación cambia según la opción seleccionada, actualizando la pantalla principal mediante un @Binding al selectedScreen.

# Estructura del proyecto

DrawerMenu
├── Assets.xcassets
│   ├── AccentColor.colorset
│   │   └── Contents.json
│   ├── AppIcon.appiconset
│   │   └── Contents.json
│   └── Contents.json
├── DrawerMenuApp.swift        # Vista principal con el ZStack y el control del menú
├── Models
│   └── Menu
│       └── MenuOption.swift   #Enum que define las opciones del menú
├── Preview Content
│   └── Preview Assets.xcassets
│       └── Contents.json
└── Views
    ├── Home
    │   └── HomeView.swift     #Pantalla principal
    ├── Main
    │   └── MainView.swif      # Vista principal con el ZStack y el control del menú
    ├── Menu
    │   ├── SideMenuRow.swift  # Vista individual para cada opción del menú
    │   └── SideMenuView.swift # Contenedor completo del menú lateral
    ├── Product
    │   └── ProductView.swift  # Gestión de productos
    └── User
        └── UserView.swift     # Gestión de usuarios


# 🧱 Construcción del menú paso a paso
Definir las opciones del menú:
En MenuOption.swift, se define un enum con los distintos destinos del menú (ej. Home, Products, Sales).
Crear la vista lateral (SideMenuView):
Usa GeometryReader para obtener el ancho del dispositivo.
Usa .offset(x:) para ocultar o mostrar el menú según isMenuOpen.
Controlar desde ContentView:
Contiene el ZStack con el menú y la vista principal.
Botón tipo "hamburguesa" en la parte superior izquierda que alterna isMenuOpen.

# 👨‍💻 ¿Quieres usarlo como base?
Este proyecto es ideal para desarrolladores que están empezando con SwiftUI y quieren aprender a:

Implementar navegación lateral tipo hamburguesa
Estructurar una app modular con carpetas organizadas por funcionalidad
