//
//  splitView.swift
//  firstSwiftUI
//
//  Created by JoSoJeong on 2022/03/29.
//

import SwiftUI

@available(iOS 15.0, *)
struct splitView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerson = grandTotal / peopleCount
        return amountPerson
    }
    var body: some View {
        NavigationView {
            Form {
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text("How much tips do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(tipPercentages, id: \.self){
                                Text($0, format: .percent)
                            }
                        }
                    }.pickerStyle(.segmented)
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
                
            }.navigationTitle("We Split")
                .toolbar {
                    
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
        }
    }
}

struct splitView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            splitView()
        } else {
            // Fallback on earlier versions
        }
    }
}
