//
//  ContentView.swift
//  BitcoinPriceApp
//
//  Created by Admin on 12/23/21.
//

import SwiftUI

extension Color{
    static let bitcoinGreen: Color = Color.green.opacity(0.9)
}

struct BitcoinPriceView: View {
    
    @ObservedObject var viewModel: BitcoinPriceViewModel
    @State private var selectedCurrency: Currency = .usd
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct PriceDetailsView: View{
    let priceDetails: PriceDetails
    
    var body: some View {
        ZStack{
            Color.bitcoinGreen
            VStack{
                Text(priceDetails.currency.icon)
                    .font(.largeTitle)
                Text("1 Bitcoin =")
                    .bold()
                    .font(.title2)
                Text("\(priceDetails.rate) \(priceDetails.currency.code)")
                    .bold()
                    .font(.largeTitle)
            }
        }
    }
}

