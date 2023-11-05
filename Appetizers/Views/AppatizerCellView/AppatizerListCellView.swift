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
        
        AppetizerRemoteImage(urlString: appatizer.imageURL)
            .frame(width: 120, height: 90)
        
//        AsyncImage(url: URL(string: appatizer.imageURL)) { image in
//            image
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
//        } placeholder: {
//            Image("food-placeholder")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
//        }
        
        VStack(alignment: .leading,spacing: 8){
            Text(appatizer.name)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(.black)
            Text("$\(appatizer.price, specifier: "%.2f")")
                .fontWeight(.semibold)
                .foregroundStyle(Color.secondary)
        }.padding(.leading)
    }
}

#Preview {
    AppatizerListCellView(appatizer: MockData.sampleAppetizer)
}
