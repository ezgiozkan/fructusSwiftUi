//
//  FruitRowView.swift
//  Fructus
//
//  Created by ezgi on 21.03.2021.
//

import SwiftUI

struct FruitRowView: View {
    
    
    var fruit : Fruit
    var body: some View {
        HStack{
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing:5){
                
                Text(fruit.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                
                
                
            }//VSTACK
        }//HSTACK
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
