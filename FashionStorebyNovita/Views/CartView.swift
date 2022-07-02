//
//  CartView.swift
//  FashionStorebyNovita
//
//  Created by Macbook Pro on 30/06/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                    }
                    
                    HStack {
                        Text("Your cart total is")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                       
                    }
                    .padding()
                    Button(action: {
                        print("Your payment is success")
                    }) {
                        NavigationLink(destination: notifView()) {
                            Text("PAY").foregroundColor(Color.white).bold()
                            Spacer()

                        }
                    }   .accentColor(Color.black)
                        .padding()
                        .background(Color(UIColor.blue))
                        .cornerRadius(4.0)
                        .padding(Edge.Set.vertical, 20)
                        .padding()
                    
                } else {
                    Text("Your cart is empty.")
                }

        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)

    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}

