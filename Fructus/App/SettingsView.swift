//
//  SettingsView.swift
//  Fructus
//
//  Created by ezgi on 25.03.2021.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
     
        
        NavigationView{
            ScrollView(.vertical, showsIndicators : false){
                
                VStack(spacing:20)
                    {
                    
                   //MARK: SECTION1
                    
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                      
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center,spacing:10){
                            
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat,sodium, and, colories. None have colesthrol. Fruits are sources of many essential nutritiens,including potessium,dietary.")
                        }
                        
                    }
                    
                    //MARK:SECTION2
                    
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Application", labelImage: "info.phone")
                    ){
                      
                        Divider().padding(.vertical,4)
                        
                        VStack(alignment: .center,spacing:10){
                            
                          SettingsRowView(name: "Developer", content: "John / Jane")
                            SettingsRowView(name: "Developer", content: "Designer / Robert Petras")
                            SettingsRowView(name: "Compatibility", content: "IOS 14")
                            SettingsRowView(name: "Website", linkLabel: "Swiftui Masterclass",linkDestination:"swiftuimasterclass.com")
                            SettingsRowView(name: "SwiftUi", content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                        }
                        
                    }
                    
                    //MARK: SECTION3
                    
                }//VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
                .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
            }//SCROLL
        }//NAV
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
