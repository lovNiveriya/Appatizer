//
//  AppatizerListViewModel.swift
//  Appetizers
//
//  Created by LOVE  on 05/11/23.
//

import Foundation
import SwiftUI

class AppatizerListViewModel:ObservableObject{
    
    @Published var appatizerList: [AppatizersRequestModel] = []
    @Published var isLoading = false
    
    
    func getListData(){
        isLoading = true
        NetworkManager.shared.getAppatizerListData { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result{
                case .success(let appatizer):
                    self.appatizerList = appatizer
                case .failure(let error):
                    switch error{
                    case .invalidURL:
                        break
                    case .invalidResponse:
                        break
                    case .invalidData:
                        break
                    case .unableToComplete:
                        break
                    }
                }
            }
        }
    }
    
}
