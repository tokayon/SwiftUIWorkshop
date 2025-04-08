//
//  LocalizedErrorExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 4/8/25.
//

import Foundation
import SwiftUI

struct LocalizedErrorExample: View {

    @StateObject var viewModel = ArticleViewModel()

    var body: some View {
        VStack {
            TextField(text: $viewModel.title, prompt: Text("Article title")) {
                Text("Title")
            }
            Button {
                viewModel.publish()
            } label: {
                Text("Publish")
            }
        }
        .padding()
        .errorAlert(error: $viewModel.error)
    }
}

final class ArticleViewModel: ObservableObject {
    enum Error: LocalizedError {
        case titleEmpty

        var errorDescription: String? {
            switch self {
            case .titleEmpty:
                return "Missing title"
            }
        }

        var recoverySuggestion: String? {
            switch self {
            case .titleEmpty:
                return "Article publishing failed due to missing title"
            }
        }
    }

    @Published var title: String = ""
    @Published var error: Swift.Error?

    func publish() {
        if title.isEmpty {
            error = Error.titleEmpty
        }
    }
}

struct LocalizedAlertError: LocalizedError {
    let underlyingError: LocalizedError
    var errorDescription: String? {
        underlyingError.errorDescription
    }
    var recoverySuggestion: String? {
        underlyingError.recoverySuggestion
    }

    init?(error: Error?) {
        guard let localizedError = error as? LocalizedError else { return nil }
        underlyingError = localizedError
    }
}

extension View {
    func errorAlert(error: Binding<Error?>, buttonTitle: String = "OK") -> some View {
        let localizedAlertError = LocalizedAlertError(error: error.wrappedValue)
        return alert(isPresented: .constant(localizedAlertError != nil), error: localizedAlertError) { _ in
            Button(buttonTitle) {
                error.wrappedValue = nil
            }
        } message: { error in
            Text(error.recoverySuggestion ?? "")
        }
    }
}
