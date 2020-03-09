//
//  ContentView.swift
//  CountryPicker
//
//  Created by Huynh Tan Phu on 3/9/20.
//  Copyright © 2020 Filesoft. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var countrySelection = 0
    
    let countries = ["Albania", "Algeria", "Andorra", "Angola", "Antigua and Barbuda", "Argentina"]
    let flags = ["flag-of-Albania", "flag-of-Algeria", "flag-of-Andorra", "flag-of-Angola", "flag-of-Antigua", "flag-of-Argentina"]
    
    var body: some View {
       
        VStack {
            Picker(selection: $countrySelection, label: Text("")) {
                ForEach(0..<countries.count) { (index) in
                    HStack(spacing: 20) {
                        Image(self.flags[index])
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .leading)
                        
                        Text(self.countries[index]).tag(index)
                        Spacer()
                    }
                }
            }.labelsHidden()
            
            Text("Picked country: \(countries[countrySelection])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
