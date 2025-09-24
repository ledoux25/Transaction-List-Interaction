//
//  dummy_transactions.swift
//  TrasactionListInteraction
//
//  Created by Sanguo Joseph Ledoux on 9/24/25.
//

import Foundation

let transactions: [Transaction] = [
    Transaction(
        id: "39561",
        Name: "Netflix",
        Amount: 15.99,

        spendOn: "Subscription",
        icon: "receipt.fill",
        date: DateFormatter.transactionDate.date(from: "2025/09/01")!,
        time: DateFormatter.transactionTime.date(from: "20:45")!,
        paymentMethod: "Visa"
    ),
    Transaction(
        id: "46512",
        Name: "Big Belly Burger",
        Amount: 5.49,
        spendOn: "Restaurant",
        icon: "carrot.fill",
        date: DateFormatter.transactionDate.date(from: "2025/09/03")!,
        time: DateFormatter.transactionTime.date(from: "09:15")!,
        paymentMethod: "Mastercard"
    ),
    Transaction(
        id: "33245",
        Name: "Figma",
        Amount: 120.00,
        spendOn: "Subscription",
        icon: "receipt.fill",
        date: DateFormatter.transactionDate.date(from: "2025/09/05")!,
        time: DateFormatter.transactionTime.date(from: "14:30")!,
        paymentMethod: "PayPal"
    ),
    Transaction(
        id: "46315",
        Name: "Verizon",
        Amount: 22.75,
        spendOn: "Mobile Recharge",
        icon: "cellularbars",
        date: DateFormatter.transactionDate.date(from: "2025/09/07")!,
        time: DateFormatter.transactionTime.date(from: "23:05")!,
        paymentMethod: "Visa"
    ),
    Transaction(
        id: "56343",
        Name: "Apple Music",
        Amount: 9.99,
        spendOn: "Suscription",
        icon: "receipt.fill",
        date: DateFormatter.transactionDate.date(from: "2025/09/10")!,
        time: DateFormatter.transactionTime.date(from: "08:00")!,
        paymentMethod: "Apple Pay"
    ),
]
