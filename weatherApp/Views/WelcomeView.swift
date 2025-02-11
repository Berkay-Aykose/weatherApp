//
//  WelcomeView.swift
//  weatherApp
//
//  Created by Berkay Veysel Ayköse on 11.02.2025.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack{
            
            VStack(spacing: 20){
                Text("Weather App'e hoş geldiniz.")
                    .font(.title)
                    .bold()
                
                Text("Lütfen bulunduğunuz bölgenin havadurumunu öğrenmek için konumunuzu paylaşın.")
                    .padding()
            }.multilineTextAlignment(.center)
                .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .symbolVariant(.fill)
            .cornerRadius(20)
            .foregroundStyle(.white)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
        .environmentObject(LocationManager()) // Preview için nesneyi ekle
}

