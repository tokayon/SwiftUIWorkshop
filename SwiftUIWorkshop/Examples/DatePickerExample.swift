//
//  DatePickerExample.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 3/6/24.
//

import SwiftUI

struct DatePickerExample: View {
    @State var selectedDate = Date()
    
    var body: some View {
        ScrollView {
            VStack {
                DatePicker("Select a Date",
                           selection: $selectedDate,
                           displayedComponents: [.date])
                .padding()
                .datePickerStyle(.compact)
                
                DatePicker("Select a Date",
                           selection: $selectedDate,
                           displayedComponents: [.hourAndMinute, .date])
                .padding()
                .datePickerStyle(.graphical)
                .tint(.red)
                
                DatePicker("Select a Date",
                           selection: $selectedDate,
                           displayedComponents: [.hourAndMinute, .date])
                .padding()
                .datePickerStyle(.wheel)
                .labelsHidden()
                
                DatePicker("Enter your birthday", selection: $selectedDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)
            }
        }
    }
}

#Preview {
    DatePickerExample()
}
