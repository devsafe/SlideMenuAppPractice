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
        ZStack{
            HStack{
                VStack(alignment: .leading, spacing: 12){
                    Image("avatar")
                        .clipShape(Circle())
                        .padding()
                    Text("Hello, ")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.leading, 25)
                    Text("Boris")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.leading, 25)
                    Button(action: {
                        self.index = 0
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {VStack(alignment: .leading){
                        HStack(spacing: 25){
                            Image(systemName: "bag")
                                .foregroundColor(self.index == 0 ? Color.white : Color.black)
                                //.padding()
                            Text("Catalogue")
                                .foregroundColor(self.index == 0 ? Color.white : Color.black)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.black.opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                        .padding(.horizontal, 25)
                        
                        Button(action: {
                            self.index = 1
                            withAnimation {
                                self.show.toggle()
                            }
                        }) {
                            HStack(spacing: 25){
                                Image(systemName: "bag")
                                    .foregroundColor(self.index == 1 ? Color.white : Color.black)
                                Text("Cart")
                                    .foregroundColor(self.index == 1 ? Color.white : Color.black)
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(self.index == 1 ? Color.black.opacity(0.2) : Color.clear)
                            .cornerRadius(10)
                            .padding(.horizontal, 25)
                        }
                        Button(action: {
                            self.index = 2
                            withAnimation {
                                self.show.toggle()
                            }
                        }) {
                            HStack(spacing: 25){
                                Image(systemName: "location.fill.viewfinder")
                                    .foregroundColor(self.index == 2 ? Color.white : Color.black)
                                Text("Fav")
                                    .foregroundColor(self.index == 2 ? Color.white : Color.black)
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(self.index == 2 ? Color.black.opacity(0.2) : Color.clear)
                            .cornerRadius(10)
                            .padding(.horizontal, 25)
                        }
                        Button(action: {
                            self.index = 3
                            withAnimation {
                                self.show.toggle()
                            }
                        }) {
                            HStack(spacing: 25){
                                Image(systemName: "location.fill.viewfinder")
                                    .foregroundColor(self.index == 3 ? Color.white : Color.black)
                                Text("Orders")
                                    .foregroundColor(self.index == 3 ? Color.white : Color.black)
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(self.index == 3 ? Color.black.opacity(0.2) : Color.clear)
                            .cornerRadius(10)
                            .padding(.horizontal, 25)
                        }
                        Divider()
                            .frame(width: 150, height: 1)
                            .background(Color.black)
                            .padding(.vertical, 30)
                        Button(action: {}) {
                            HStack{
                                Image(systemName: "location.fill.viewfinder")
                                    .foregroundColor(.black)
                                Text("Exit")
                                    .foregroundColor(.black)
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            Spacer(minLength: 0)
                        }
                        .padding(.top, 25)
                        .padding(.horizontal, 20)
                    }
                    }
                }
                Spacer(minLength: 0)
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 15){
                    Button(action: {
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                           // .frame(width: self.show ? 18 : 22, height: 18)
                            .frame(width: 22, height: 22)
                            .foregroundColor(Color.black.opacity(0.4))
                    }
                    Text(self.index == 0 ? "Catalogue" : (self.index == 1 ? "Cart" : (self.index == 2 ? "Fav" : "Orders")))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                GeometryReader {_ in
                    VStack {
                        if self.index == 0 {
                            Catalogue()
                        }
                        else if self.index == 1 {
                            Cart()
                        }
                        else if self.index == 2 {
                            Favourits()
                        }
                        else {
                            Orders()
                        }
                    }
                }
            }
            .background(Color.white)
            .cornerRadius(self.show ? 30 : 0)
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
        }
        .background(Color.pink.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
    
}



struct Catalogue: View {
    var body: some View {
        VStack {
            Text("Catalogue content")
        }
    }
}

struct Cart: View {
    var body: some View {
        VStack {
            Text("Cart content")
        }
    }
}

struct Orders: View {
    var body: some View {
        VStack {
            Text("Orders content")
        }
    }
}

struct Favourits: View {
    var body: some View {
        VStack {
            Text("Favourits content")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

