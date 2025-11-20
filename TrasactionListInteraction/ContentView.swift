//
//  ContentView.swift
//  TransactionListInteraction
//
//  Created by Sanguo Joseph Ledoux on 9/24/25.
//

import Foundation
import SwiftUI

struct Transaction : Equatable{
    let id: String
    let Name: String
    let Amount: Double
    let spendOn: String
    let icon: String
    let date: Date
    let time: Date
    let paymentMethod: String
}


struct ContentView: View {
    @State var selectedTransaction : Int? = nil
    @Namespace var IconNamespace
    @Namespace var TitleNamespace
    @Namespace var PriceNameSpace
    var body: some View {
        ZStack {
            Color.black.opacity(0.05)
            VStack(alignment: .leading){
                Text("Transactions")
                    .padding(.bottom, 8)
                    .foregroundStyle(.secondary)
                    .font(.title3.bold())
                if selectedTransaction == nil {
                    TransactionsList(selectedTransaction: $selectedTransaction, IconNamespace: IconNamespace, TitleNamespace: TitleNamespace, PriceNameSpace: PriceNameSpace)
                }
                
                if selectedTransaction != nil{
                    TransactionDetail(selectedTransaction: $selectedTransaction, IconNamespace: IconNamespace, TitleNamespace: TitleNamespace, PriceNameSpace: PriceNameSpace, transaction: transactions[selectedTransaction!])
                        .transition(.asymmetric(insertion: .offset(y:50).combined(with: .opacity), removal: .opacity))
                }
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background()
            .clipShape(.rect(cornerRadius: 32))
            .padding(.horizontal, 24)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}