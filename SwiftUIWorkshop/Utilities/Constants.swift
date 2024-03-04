//
//  Constants.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/4/24.
//

import SwiftUI

struct Constants {
    static let examplesTitle = "Examples"
    
    static let examples: [Example] = [
        .init(title: "Action sheet", view: AnyView(ActionSheetExample())),
        .init(title: "Alert", view: AnyView(AlertExample()))
    ]
}
