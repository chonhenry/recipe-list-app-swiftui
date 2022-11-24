//
//  ContentView.swift
//  Recipe List App
//
//  Created by Henry Chon on 11/19/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = ReciprModel()
    
    var body: some View {
        
        VStack(spacing: 0) {
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                }
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: geo.size.width * 2 / 3, height: geo.size.height / 4)
                    .padding(.leading, geo.size.width / 6)
                    .padding(.top, geo.size.height * 3 / 8)
            }
            
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: geo.size.width/2, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                    }
                
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: geo.size.width/2, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                    }.offset(x: geo.frame(in: .local).midX, y: 0)
            }
        }.ignoresSafeArea()
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
