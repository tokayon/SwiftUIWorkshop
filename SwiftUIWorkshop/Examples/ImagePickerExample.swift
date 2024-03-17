//
//  ImagePickerExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/17/24.
//

import SwiftUI
import PhotosUI


struct ImageLoader: Identifiable {
    let id = UUID()
    var image: Image
}

struct ImagePickerExample: View {
    @State var currentItems: [PhotosPickerItem] = []
    @State var selectedImages: [ImageLoader] = []
    
    var body: some View {
        VStack {
            PhotosPicker("Pick the image(s)", selection: $currentItems)
            List(selectedImages) { loader in
                loader.image
                    .resizable()
                    .scaledToFit()
            }
        }
        .onChange(of: currentItems) { oldValue, newValue in
            selectedImages.removeAll()
            currentItems.forEach { item in
                item.loadTransferable(type: Data.self, completionHandler: { result in
                    switch result {
                    case .success(let data):
                        guard let data, let image = UIImage(data: data) else { return }
                        selectedImages.append(ImageLoader(image: Image(uiImage: image)))
                    case .failure(let error):
                        print(error)
                    }
                })
            }
        }
    }
}

#Preview {
    ImagePickerExample()
}
