//
//  NavigationStackExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/17/24.
//

import SwiftUI

final class Router: ObservableObject {
    static let shared = Router()
    
    @Published var navPath = NavigationPath()
    
    enum Destination: Hashable {
        case string(string: String)
    }
    
    func navigate(to path: Destination) {
        navPath.append(path)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}

struct NavigationStackExample: View {
    @StateObject var router: Router = .shared
    
    var body: some View {
        NavigationStack(path: $router.navPath) {
            ZStack {
                Button {
                    router.navigate(to: .string(string: "Hello"))
                } label: {
                    Text("Present view")
                }
            }
            .navigationDestination(for: Router.Destination.self) { destination in
                Group {
                    switch destination {
                    case .string(let string):
                        Text(string)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStackExample()
}
