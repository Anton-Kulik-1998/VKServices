//
//  Home.swift
//  VKServices
//
//  Created by Антон Кулик on 01.08.2022.
//

import SwiftUI

struct Home: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.service, id: \.self) {service in
                    Text(service.name)
                }
            }
            .navigationTitle("Сервисы VK")
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
