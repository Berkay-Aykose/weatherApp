//
//  LoadingView.swift
//  weatherApp
//
//  Created by Berkay Veysel Ayköse on 11.02.2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
    }
}

#Preview {
    LoadingView()
}
