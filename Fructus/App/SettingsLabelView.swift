//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by ezgi on 28.03.2021.
//

import SwiftUI


struct SettingsLabelView: View {
    
    //MARK:PROPERTIES

    var labelText: String
    var labelImage : String

    
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
