//
//  SettingsRowView.swift
//  Fructus
//
//  Created by ezgi on 28.03.2021.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    
    var body: some View {
        
        
        VStack {
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if(content != nil)
                {
                    Text(content!)
                }else if(linkLabel != nil && linkDestination != nil)
                {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
                
            }
            Divider()
                .padding(.vertical,4)
        }
       
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
