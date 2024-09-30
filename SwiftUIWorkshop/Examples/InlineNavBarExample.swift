//
//  InlineNavBarExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 8/26/24.
//

import Foundation
import SwiftUI

struct InlineNavBarExample: View {
  @State private var inlineTitleOpacity: Double = 0
  @State private var scrollTopEdgeInset: Double = 0

  var body: some View {
      EmptyView()
//        List {
//          Section {
//            VStack(spacing: 8) {
//              Image(systemName: "carrot.fill")
//                .foregroundStyle(.white)
//                .font(.largeTitle)
//                .bold()
//                .padding()
//                .background(.orange)
//                .clipShape(RoundedRectangle(cornerRadius: 16))
//              Text("Feed")
//                .font(.title)
//                .bold()
//                .fontDesign(.rounded)
//                .onGeometryChange(for: Double.self) { proxy in
//                  let frame = proxy.frame(in: .scrollView)
//                  return min(1, max(0, (scrollTopEdgeInset - frame.minY) / frame.height))
//                } action: { inlineTitleOpacity in
//                  self.inlineTitleOpacity = inlineTitleOpacity
//                }
//              Text("Your latest PostHog events in a unified timeline.")
//                .font(.callout)
//            }
//            .multilineTextAlignment(.center)
//            .frame(maxWidth: .infinity)
//            .padding()
//            .background(.ultraThinMaterial)
//            .clipShape(RoundedRectangle(cornerRadius: 16))
//          }
//          .listSectionSeparator(.hidden)
//
//          Text("Cell 1")
//          Text("Cell 2")
//          Text("Cell 3")
//        }
//        .onScrollGeometryChange(for: Double.self, of: { geometry in
//          geometry.contentInsets.top
//        }, action: { oldValue, newValue in
//          scrollTopEdgeInset = newValue
//        })
//        .toolbar {
//          ToolbarItem(placement: .principal) {
//            Text("Feed")
//              .font(.body)
//              .bold()
//              .fontDesign(.rounded)
//              .dynamicTypeSize(.large ... .xxxLarge)
//              .opacity(inlineTitleOpacity)
//          }
//        }
//        .listStyle(.plain)
//        .navigationBarTitleDisplayMode(.inline)
    }
}
