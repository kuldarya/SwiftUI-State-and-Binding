//
//  ContentView.swift
//  State and Binding
//
//  Created by Developer on 18.02.2020.
//  Copyright © 2020 Darya Kuliashova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var dishes = Dish.getAll()
    @State private var isSpicy = false
    
    var body: some View {
        
        List {
            Toggle(isOn: $isSpicy) {
                Text("Spicy")
                    .font(.title)
            }
            
            ForEach(dishes.filter({ $0.isSpicy == self.isSpicy })) { dish in
                HStack {
                    Image(dish.imageUrl)
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    
                    Spacer()
                    
                    if dish.isSpicy {
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
