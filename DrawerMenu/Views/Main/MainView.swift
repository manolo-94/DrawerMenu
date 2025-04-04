//
//  ContentView.swift
//  DrawerMenu
//
//  Created by MacBook Air on 04/04/25.
//
/// Vista principal que contiene el menú lateral y la pantalla activa.

import SwiftUI

struct MainView: View {
    
    @State private var isMenuOpen = false
    @State private var selectedScreen: MenuOption = .home
    
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    // Cambiamos la vista segun la opcion seleccionada
                    switch selectedScreen {
                    case .home:
                        HomeView()
                    case .user:
                        UserView()
                    case .product:
                        ProductView()
                    }
                }
                .navigationTitle(selectedScreen.rawValue).toolbar {
                    ToolbarItem(placement: .topBarLeading){
                        Button(action: {
                            isMenuOpen.toggle()
                        }){
                            Image(systemName: "line.horizontal.3").imageScale(.large)
                        }
                    }
                }
                SideMenuView(isMenuOpen: $isMenuOpen, selectedScreen: $selectedScreen)
            }
            .gesture(DragGesture().onEnded{
                value in if value.translation.width > 50 {
                    withAnimation{
                        isMenuOpen = true
                    }
                } else if value.translation.width < -50 {
                    withAnimation{
                        isMenuOpen = false
                    }
                }
            })
        }
    }
}

#Preview {
    MainView()
}
