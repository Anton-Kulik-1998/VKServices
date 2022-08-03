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
                    Link(destination: service.link) {
                        HStack {
                            URLImage(urlString: service.iconURL)
                            VStack(alignment: .leading, spacing: 3) {
                                Text(service.name)
                                Text(service.serviceDescription)
                                    .font(.custom("system", size: 14))
                            }
                            .foregroundColor(.black)
                        }
                    }.lineLimit(2)
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
//URLImage(urlString: course.image)
