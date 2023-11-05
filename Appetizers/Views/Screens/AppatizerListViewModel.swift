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
    
    
    func getListData(){
        NetworkManager.shared.getAppatizerListData { result in
            DispatchQueue.main.async {
                switch result{
                case .success(let appatizer):
                    self.appatizerList = appatizer
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}
