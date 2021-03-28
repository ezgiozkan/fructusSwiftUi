//
//  FruitDetailView.swift
//  Fructus
//
//  Created by ezgi on 21.03.2021.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: -PROPERTIES
    
    var fruit: Fruit
    
    //MARK: -BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
               
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                        
                    
                    
                    VStack(alignment: .leading, spacing: 20){
                    
                        
                        
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                          
                        //HEADLINE
                        Text(fruit.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                    }//VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                }//VSTACK
                .navigationBarHidden(true)
                
            }//:SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATIONVIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


//MARK: -PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
