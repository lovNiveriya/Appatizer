//
//  ContentView.swift
//  Appetizers
//
//  Created by LOVE  on 02/11/23.
//

import SwiftUI

struct AppatizerTabView: View {
    var body: some View {
        TabView{
            AppitizerListView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            
            AccountView()
                .tabItem {
                    Text("account")
                    Image(systemName: "person")
                }
            
            OrderView()
                .tabItem {
                    Text("order")
                    Image(systemName: "bag")
                }
        }
        .tint(Color("appPrimary"))
    }
}

#Preview {
    AppatizerTabView()
}
