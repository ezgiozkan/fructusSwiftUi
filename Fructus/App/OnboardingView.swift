//
//  OnboardingView.swift
//  Fructus
//
//  Created by ezgi on 21.03.2021.
//

import SwiftUI
//MARK: PROPERTIES

var fruits: [Fruit] = fruitsData



//MARK: BODY
struct OnboardingView: View {
    var body: some View {
        
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }//:LOOP  
        }//:TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
