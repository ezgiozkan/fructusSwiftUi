//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by ezgi on 25.03.2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK:PROPERTIES
    
    var fruit: Fruit
    let nutritient : [String] = ["Energy","Sugar","Fat","Protein", "Vitamins", "Minerals"]
    
    //MARK:BODY
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutritient.count, id: \.self){ item in
                    
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutritient[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//GROUPBOX
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
