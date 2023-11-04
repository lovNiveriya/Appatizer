//
//  AppitizerListView.swift
//  Appetizers
//
//  Created by LOVE  on 02/11/23.
//

import SwiftUI

struct AppitizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers, id: \.id) { appatizer in
                HStack{
                AppatizerListCellView(appatizer: appatizer)
                }.navigationTitle("🍟 Apptizers")
            }
        }
    }
}

#Preview {
    AppitizerListView()
}
