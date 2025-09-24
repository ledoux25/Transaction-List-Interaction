//
//  TransactionDetail.swift
//  TrasactionListInteraction
//
//  Created by Sanguo Joseph Ledoux on 9/24/25.
//

import SwiftUI

struct TransactionDetail: View {
    @Binding var selectedTransaction: Int?
    var IconNamespace  : Namespace.ID

    var TitleNamespace : Namespace.ID
    var PriceNameSpace : Namespace.ID
    var transaction : Transaction
    var body: some View {
        
        VStack (alignment: .leading){

            HStack(alignment: .top) {
                HStack{
                    Image(systemName: transaction.icon)
                        .font(.system(size: 30, weight: .bold))
                }
                    .frame(width: 60, height: 60)
                    .background(.black.opacity(0.85))
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 14))
                    .matchedGeometryEffect(id: "image-\(transaction.id)", in: IconNamespace)
                Spacer()
                Image(systemName: "xmark")
                    .padding(10)
                    .background(.black)
                    .clipShape(.circle)
                    .foregroundStyle(.white)
                    .onTapGesture {
                        withAnimation(.bouncy(duration: 0.55)){
                            selectedTransaction = nil
                        }
                        
                    }
                    
                
            }
            
            HStack(alignment: .center, ) {

                VStack(alignment: .leading, ) {
                    Text(transaction.Name)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)

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
            
                VStack(alignment: .leading){
                    Line()
                        .stroke(
                            .black.opacity(0.4),
                            style: StrokeStyle(lineWidth: 1, dash: [5])
                        )
                        .frame(height: 1)
                        .padding(.vertical,5)
                    
                    Text("#\(transaction.id)")
                    Text(transaction.date, format: .dateTime.month(.wide).day())
                    Text(transaction.time.formattedHM)
                    Line()
                        .stroke(.black.opacity(0.4),style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .frame(height: 1)
                        .padding(.vertical,5)
                    
                    Text("Paid Via Credit Card")
                        .lineHeight(.tight)
                    HStack{
                        Text("XXXX 8934")
                        Image("visa")
                            .resizable()
                            .frame(width: 10,height: 10)
                            .scaleEffect(4)
                            .offset(x:10)
                            .opacity(0.7)
                    }
                }
                
            

        }
        .foregroundStyle(.black.opacity(0.5))
    }
}


//#Preview {
//    TransactionDetail()
//}
