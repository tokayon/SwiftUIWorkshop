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
        .init(title: "Action sheet", content: ActionSheetExample()),
        .init(title: "Action dynamic sheet", content: ActionSheetDynamicExample()),
        .init(title: "Alert", content: AlertExample()),
        .init(title: "Alert dynamic", content: AlertDynamicExample()),
        .init(title: "Async image", content: AsyncImageExample()),
        .init(title: "Buttons", content: ButtonsExample()),
        .init(title: "Colors", content: ColorExample()),
        .init(title: "Color Picker", content: ColorPickerExample()),
        .init(title: "Divider", content: DividerExample()),
        .init(title: "Container relative", content: ContainerRelativeViewExample()),
        .init(title: "Form", content: FormExample()),
        .init(title: "Gradient", content: GradientExample()),
        .init(title: "Grid", content: GridViewExample()),
        .init(title: "Groups", content: GroupExample()),
        .init(title: "LazyStack", content: LazyStackExample()),
        .init(title: "Link", content: LinkExample()),
        .init(title: "List", content: ListExample()),
        .init(title: "Map", content: MapExample()),
        .init(title: "NavigationStack", content: NavigationStackExample()),
        .init(title: "Image picker", content: ImagePickerExample()),
        .init(title: "Picker", content: PIckerExample()),
        .init(title: "Progress View", content: ProgressViewExample()),
        .init(title: "Transform", content: ProgressViewExample()),
        .init(title: "ScrollView", content: ScrollViewExample()),
        .init(title: "MailView", content: MailViewExample()),
        .init(title: "DatePicker", content: DatePickerExample()),
        .init(title: "ScrollTarget", content: ScrollTargetExample()),
        .init(title: "InlineNavBar", content: InlineNavBarExample()),
        .init(title: "Container", content: ContainerViewExample()),
        .init(title: "Carousel", content: CarouselExample()),
        .init(title: "Magazine", content: MagazineExample()),
        .init(title: "Internet Monitor", content: InternetMonitorExample()),
        .init(title: "Grid Example", content: GridExample()),
        .init(title: "Shader Example", content: ShaderExample()),
        .init(title: "Timeline Shader", content: TimelineExample()),
    ]
}
