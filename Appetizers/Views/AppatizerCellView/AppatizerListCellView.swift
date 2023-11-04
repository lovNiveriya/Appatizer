//
//  AppatizerListCellView.swift
//  Appetizers
//
//  Created by LOVE  on 05/11/23.
//

import SwiftUI

struct AppatizerListCellView: View {
    let appatizer: AppatizersRequestModel
    var body: some View {
        Image(.asianFlankSteak)
            .resizable()
            .frame(width: 100, height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        
        VStack(alignment: .leading,spacing: 8){
            Text(appatizer.name)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(Color.black)
            Text("$\(appatizer.price, specifier: "%.2f")")
                .fontWeight(.semibold)
                .foregroundStyle(Color.secondary)
        }.padding(.leading)
    }
}

#Preview {
    AppatizerListCellView(appatizer: MockData.sampleAppetizer)
}
