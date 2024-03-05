//
//  AsyncImage.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/4/24.
//

import SwiftUI

struct AsyncImageExample: View {
    let url = URL(string: "https://as1.ftcdn.net/v2/jpg/06/05/37/40/1000_F_605374009_hEUHatmKPzuHTIacg7rLneAgnLHUgegM.jpg")
    
    let wrongURL = URL(string: "https://somewrongurl.comasdflkj")
    var body: some View {
        VStack {
            AsyncImage(url: url, scale: 1.0) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            
            AsyncImage(url: wrongURL) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                case .failure(let error):
                    Text(error.localizedDescription)
                default:
                    Color.green
                }
            }
        }
        .padding()
    }
}

#Preview {
    AsyncImageExample()
}
