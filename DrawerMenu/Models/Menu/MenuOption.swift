//
//  MenuOption.swift
//  DrawerMenu
//
//  Created by MacBook Air on 04/04/25.
//
/// Enum que representa las diferentes pantallas disponibles en el menú lateral.

import SwiftUI

enum MenuOption: String, CaseIterable {
    case home = "Inicio"
    case user = "usuarios"
    case product = "Productos"
    
    /// Devuelve el nombre del sistema de ícono para cada opción del menú.
    var icon: String {
        switch self {
        case .home: return "house"
        case .user: return "person"
        case .product: return "cart"
        }
    }
    
}


