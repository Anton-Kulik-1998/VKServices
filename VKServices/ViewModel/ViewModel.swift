//
//  ViewModel.swift
//  VKServices
//
//  Created by Антон Кулик on 30.07.2022.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var service: [Service] = []
    func fetch() {
        guard let url = URL(string: "https://publicstorage.hb.bizmrg.com/sirius/result.json") else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else { return }
            do {
                let service = try JSONDecoder().decode(VKDataModel.self, from: data).body.services
//                print(vkData.body.services)
                DispatchQueue.main.async {
                    self?.service = service
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}
