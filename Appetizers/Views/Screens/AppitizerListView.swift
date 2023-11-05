//
//  AppitizerListView.swift
//  Appetizers
//
//  Created by LOVE  on 02/11/23.
//

import SwiftUI

struct AppitizerListView: View {
    
    @StateObject private var viewModel = AppatizerListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appatizerList) { appatizer in
                HStack{
                AppatizerListCellView(appatizer: appatizer)
                }.navigationTitle("🍟 Apptizers")
            }
        }.onAppear{
            viewModel.getListData()
        }
    }

}

#Preview {
    AppitizerListView()
}
