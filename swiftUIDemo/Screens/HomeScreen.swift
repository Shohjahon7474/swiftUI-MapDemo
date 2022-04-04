//
//  HomeScreen.swift
//  swiftUIDemo
//
//  Created by Shohjahon Numonovich on 4/2/22.
//

import SwiftUI

struct HomeScreen: View {

    var body: some View {
        
        NavigationView{
            Text("Shohjahon Abdurahmonov").padding()
                .toolbar{
                    ToolbarItem(placement: .principal){
                        Text("Home")
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            
                        } label: {
                            Image(systemName: "applelogo")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading){
                        Button{
                            
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }
                    }
                    
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
