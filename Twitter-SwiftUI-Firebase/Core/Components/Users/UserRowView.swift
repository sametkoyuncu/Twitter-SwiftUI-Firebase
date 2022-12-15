//
//  UserRowView.swift
//  Twitter-SwiftUI-Firebase
//
//  Created by fmss on 15.12.2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("sametdotpage")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("Samet Koyuncu")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
