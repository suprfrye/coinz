//
//  ContentView.swift
//  coinz
//
//  Created by Tara Frye on 9/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var inputAmount = ""
    @State private var inputUnit = 0
    let units = ["USD", "XAU", "XAG"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("What do you want to convert?")) {
                    TextField("Enter Amount", text: $inputAmount)
                        .keyboardType(.decimalPad)

                    Picker("Select Unit", selection: $inputUnit) {
                        ForEach(0 ..< units.count) {
                            Text(self.units[$0])
                        }
                    }.pickerStyle(.segmented)
                }
            }.navigationTitle("Coinz")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
