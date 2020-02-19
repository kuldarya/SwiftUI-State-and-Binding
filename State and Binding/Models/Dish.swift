//
//  Dish.swift
//  State and Binding
//
//  Created by Developer on 18.02.2020.
//  Copyright © 2020 Darya Kuliashova. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageUrl: String
    let isSpicy: Bool
}

extension Dish {
    static func getAll() -> [Dish] {
        return [
            Dish(name: "Spicy Chicken", imageUrl: "spicyChicken", isSpicy: true),
            Dish(name: "Pizza with Chicken", imageUrl: "chickenPizza", isSpicy: false),
            Dish(name: "Chicken Burger with Caramelized Onion", imageUrl: "spicyBurger", isSpicy: true)
        ]
    }
}
