//
//  BitcoinPriceViewModel.swift
//  BitcoinPriceApp
//
//  Created by Admin on 12/23/21.
//

import Foundation
import Combine

class BitcoinPriceViewModel: ObservableObject {
    @Published public private(set) var lastUpdated: String = ""
    @Published public private(set) var priceDetails: [PriceDetails] = Currency.allCases.map{
            PriceDetails(currency: $0)
    }
    
    public func onAppear() {
        //Obtener los datos del API
    }
}
