//
//  ContentView.swift
//  WeSplit
//
//  Created by John Kevin Losito on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var tipValue: Double {
        return checkAmount / 100 * Double(tipPercentage)
    }
    
    var grandTotal: Double {
        return checkAmount + tipValue
    }
    
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        
        let amountPerPerson = grandTotal/peopleCount
        
        return amountPerPerson
    }
    
    var currencyCode: FloatingPointFormatStyle<Double>.Currency{
        return .currency(code: Locale.current.currencyCode ?? "USD")
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: currencyCode)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section {
                    Text(totalPerPerson, format: currencyCode)
                } header: {
                    Text("Amount per person")
                }
                
                Section {
                    Text(grandTotal, format: currencyCode)
                } header: {
                    Text("Total amount(including tip)")
                }
            }
            .navigationTitle("WeSplit")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
