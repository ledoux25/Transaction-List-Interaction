//
//  extensions.swift
//  TrasactionListInteraction
//
//  Created by Sanguo Joseph Ledoux on 9/24/25.
//

import Foundation
extension DateFormatter {
    static let transactionDate: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        return df
    }()

    static let transactionTime: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "HH:mm"
        return df
    }()
    

}


extension Date {
    var formattedHM: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        formatter.amSymbol = "am"
        formatter.pmSymbol = "pm"
        return formatter.string(from: self)
    }
}
