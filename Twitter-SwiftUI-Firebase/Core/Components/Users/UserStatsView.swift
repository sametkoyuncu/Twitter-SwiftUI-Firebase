//
//  UserStatsView.swift
//  Twitter-SwiftUI-Firebase
//
//  Created by fmss on 15.12.2022.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("120")
                    .bold()
                    .font(.subheadline)
                Text("Following")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            
            HStack(spacing: 4) {
                Text("1.2M")
                    .bold()
                    .font(.subheadline)
                Text("Followers")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
