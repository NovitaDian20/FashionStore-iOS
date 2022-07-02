//
//  Product.swift
//  FashionStorebyNovita
//
//  Created by Macbook Pro on 30/06/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
//    UUD is generecly by swift
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Sunflower jacket", image: "jaketkuning", price: 54),
                   Product(name: "Red wine jacket", image: "jaketmerah", price: 89),
                   Product(name: "Ataru Black Hat", image: "topihitam", price: 79),
                   Product(name: "Japan style skirt", image: "japanredminiskirt", price: 94),
                   Product(name: "Lilac Dress", image: "lilacdress", price: 99),
                   Product(name: "Black Tuxedo", image: "blacktuxedo", price: 65),
                   Product(name: "Man Superior Watch", image: "watchman", price: 54),
                   Product(name: "White skirt", image: "tennisskirt", price: 83)]
