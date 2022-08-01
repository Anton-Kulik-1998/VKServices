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
                ForEach(viewModel.courses, id: \.self) {course in
                    HStack {
                        URLImage(urlString: course.image)
                        Text(course.name)
                            .bold()
                    }
                    .padding(3)
                }
            }
            .navigationTitle("Course")
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
