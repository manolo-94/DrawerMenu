//
//  SideMenuRow.swift
//  DrawerMenu
//
//  Created by MacBook Air on 04/04/25.
//
/// Vista que representa una fila dentro del menú lateral (hamburguesa).

import SwiftUI

struct SideMenuRow: View {
    
    var option: MenuOption
    var action: () -> Void
    
    var body: some View {
        Button (action: action) {
            HStack {
                Image(systemName: option.icon).frame(width: 24, height: 24)
                Text(option.rawValue).font(.headline).foregroundStyle(.white)
                Spacer()
            }
            .padding()
        }
    }
}
/*
#Preview {
    SideMenuRow()
}
*/
