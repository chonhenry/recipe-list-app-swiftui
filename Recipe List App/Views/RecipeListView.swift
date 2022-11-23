//
//  ContentView.swift
//  Recipe List App
//
//  Created by Henry Chon on 11/19/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @State var tabIndex = 1
    
    var body: some View {
        TabView(selection: $tabIndex) {
            Text("Hello, world")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("tab 1")
                    }
                }
                .tag(0)
            
            VStack{
                Text("Ths is tab 2")
                Text("Ths is some more tab")
            }
            .tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("tab 2")
                }
            }
            .tag(1)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
