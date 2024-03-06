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
        VStack {
            DatePicker("Select a Date",
                       selection: $selectedDate,
                       displayedComponents: [.hourAndMinute, .date])
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
        }
       
    }
}

#Preview {
    DatePickerExample()
    
}
