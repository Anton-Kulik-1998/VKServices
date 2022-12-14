//
//  URLImage.swift
//  VKServices
//
//  Created by Антон Кулик on 01.08.2022.
//

import SwiftUI

struct URLImage: View {
    let urlString: URL?
    @State var data: Data?
    var body: some View {
        if let data = data, let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
//                .background(Color.gray)
        }
        else {
            Image(systemName: "image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
//                .background(Color.gray)
                .onAppear {
                    fetchData()
                }
        }
    }
    private func fetchData() {
//        guard let url = URL(string: urlString) else { return }
        guard let url = urlString else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}
