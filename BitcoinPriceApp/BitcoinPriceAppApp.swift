//
//  BitcoinPriceAppApp.swift
//  BitcoinPriceApp
//
//  Created by Admin on 12/23/21.
//

import SwiftUI

@main
struct Bitcoin_PriceAppApp: App {
    var body: some Scene {
        WindowGroup {
            BitcoinPriceView(viewModel: BitcoinPriceViewModel())
        }
    }
}
