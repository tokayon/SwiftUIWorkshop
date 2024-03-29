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
        .init(title: "Action dynamic sheet", view: AnyView(ActionSheetDynamicExample())),
        .init(title: "Alert", view: AnyView(AlertExample())),
        .init(title: "Alert dynamic", view: AnyView(AlertDynamicExample())),
        .init(title: "Async image", view: AnyView(AsyncImageExample())),
        .init(title: "Buttons", view: AnyView(ButtonsExample())),
        .init(title: "Colors", view: AnyView(ColorExample())),
        .init(title: "Color Picker", view: AnyView(ColorPickerExample())),
        .init(title: "Divider", view: AnyView(DividerExample())),
        .init(title: "Container relative", view: AnyView(ContainerRelativeViewExample())),
        .init(title: "Form", view: AnyView(FormExample())),
        .init(title: "Gradient", view: AnyView(GradientExample())),
        .init(title: "Grid", view: AnyView(GridViewExample())),
        .init(title: "Groups", view: AnyView(GroupExample()))
    ]
}
