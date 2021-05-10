//
//  ContentView.swift
//  SlideMenuAppPractice
//
//  Created by Сахар Кубический on 10.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    @State var show = false
    
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    Image("avatar")
                        .clipShape(Circle())
                    
                    Text("Hello, ")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    Text("Boris")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        self.index = 0
                    })
                }
            }
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
