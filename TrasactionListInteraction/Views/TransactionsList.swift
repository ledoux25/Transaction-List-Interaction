//
//  TransactionsList.swift
//  TrasactionListInteraction
//
//  Created by Sanguo Joseph Ledoux on 9/24/25.
//

import SwiftUI

struct TransactionsList: View {
    @Binding var selectedTransaction : Int?
    var IconNamespace : Namespace.ID
    var TitleNamespace : Namespace.ID
    var PriceNameSpace : Namespace.ID
    var body: some View {
        VStack(alignment: .leading,spacing: 16){
        
            ForEach(transactions, id:\.self.id) { transaction in
                HStack(alignment: .center,){
                    HStack{
                        Image(systemName: transaction.icon)
                            .font(.system(size: 25, weight: .bold))
                    }
                        .frame(width: 60, height: 60)
                        .background(.black.opacity(0.85))
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 32))
                        .matchedGeometryEffect(id: "image-\(transaction.id)", in: IconNamespace)
                    VStack(alignment: .leading,){
                        Text(transaction.Name)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        
                        Text(transaction.spendOn)
                            .font(.footnote.weight(.medium))
                            .foregroundStyle(.black.opacity(0.5))
                        
                    }
                    .matchedGeometryEffect(id: "title-\(transaction.id)", in: TitleNamespace)
                    Spacer()
                    Text("-$\(String(format: "%.2f", transaction.Amount))")
                        .foregroundStyle(.black.opacity(0.5))
                        .font(.title3.bold())
                        .matchedGeometryEffect(id: "price\(transaction.id)", in: PriceNameSpace)
                }
                .contentShape(Rectangle())
                .onTapGesture{
                    withAnimation(.bouncy(duration: 0.55)){
                        selectedTransaction = transactions.firstIndex(of: transaction)
                    }
                }
            }
            
            
            Button{
                
            } label: {
                HStack{
                    Text("All Transactions")
                    Image(systemName: "arrow.right")
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.black)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 16))
            .padding(.top, 8)
        }
    }
}

//#Preview {
//    TransactionsList()
//}
