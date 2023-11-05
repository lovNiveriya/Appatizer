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
        ZStack{
            NavigationView{
                List(viewModel.appatizerList) { appatizer in
                    HStack{
                        AppatizerListCellView(appatizer: appatizer)
                    }.navigationTitle("🍟 Apptizers")
                }
            }
        }.onAppear{
            viewModel.getListData()
        }
        
        if viewModel.isLoading {
            VStack{
                ProgressView(label: {
                    Text("Loading List")
                        .foregroundStyle(.primary)
                })
                .tint(.appPrimary)
                .progressViewStyle(.circular)
                Spacer()
            }.padding()
        }
        
    }

}

#Preview {
    AppitizerListView()
}
