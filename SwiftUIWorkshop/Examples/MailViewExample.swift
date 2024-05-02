//
//  MailViewExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 5/1/24.
//

import SwiftUI
import UIKit
import MessageUI

struct MailViewExample: View {
    @State var isShowingMailView = false

    var body: some View {
        Button {
            isShowingMailView.toggle()
        } label: {
            Text("Email Us")
        }
        .disabled(!MFMailComposeViewController.canSendMail())
        .sheet(isPresented: $isShowingMailView) {
            MailView()
        }
    }
}

struct MailView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentation

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

        @Binding var presentation: PresentationMode

        init(presentation: Binding<PresentationMode>) {
            _presentation = presentation
        }

        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            $presentation.wrappedValue.dismiss()
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(presentation: presentation)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                                context: UIViewControllerRepresentableContext<MailView>) {
    }
}
