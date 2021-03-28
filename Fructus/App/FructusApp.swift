//
//  FructusApp.swift
//  Fructus
//
//  Created by ezgi on 20.03.2021.
//

import SwiftUI

@main
struct FructusApp: App {
    
    
    //Appstorage property wrapper sayesinde kullanıcı uygulamayı açtığında sürekli karşısına giriş ekranı çıkmıyor veya dark mode seçtiyse her seferinde uygulama tekrar çalıştığında light moda dönmüyor 
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                  OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
