//
//  ContentView.swift
//  UnitConversion
//
//  Created by John Kevin Losito on 4/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userInput: Double?
    @State private var convertFrom = "Celsius"
    @State private var convertTo = "Celsius"
    
    
    let units = ["Celsius", "Fahrenheit", "Kelvin"]
    
    func getUnit(unit: String) -> UnitTemperature {
        switch unit {
        case "Celsius":
            return .celsius
        case "Fahrenheit":
            return .fahrenheit
        case "Kelvin":
            return .kelvin
        default:
            return .celsius
        }
    }
    
    var convertedUnit: Double{
        let inputValue = Measurement(value: userInput ?? 0, unit: getUnit(unit: convertFrom))
        let convertedValue = inputValue.converted(to: getUnit(unit: convertTo))
        
        return convertedValue.value
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker("Convert unit from", selection: $convertFrom) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    TextField("Enter value", value: $userInput, format: .number)
                        .keyboardType(.decimalPad)
                    
                } header: {
                    Text("Convert from")
                }
                
                Section{
                    Picker("Convert unit from", selection: $convertTo) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Text(convertedUnit.formatted())
                } header: {
                    Text("Convert To")
                }
            }
            .navigationTitle("Unit Conversion")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
