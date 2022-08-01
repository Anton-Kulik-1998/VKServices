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
//                ForEach(viewModel.vkData, id: \.self) {service in
//                    HStack {
//                        Text(service.name)
////                        URLImage(urlString: course.image)
////                        Text(course.body.services.description)
////                            .bold()
//                    }
//                    .padding(3)
//                }
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
