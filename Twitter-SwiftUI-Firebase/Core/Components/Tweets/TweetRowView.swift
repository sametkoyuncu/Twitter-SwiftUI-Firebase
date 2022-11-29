//
//  TweetRowView.swift
//  Twitter-SwiftUI-Firebase
//
//  Created by fmss on 29.11.2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                // user info & tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    // user info
                    HStack {
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                            
                    }
                    
                    // tweet caption
                    Text("I believe in Harvey Dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // action buttons
            HStack {
                TweetActionButton(imageName: "bubble.left")
                Spacer()
                TweetActionButton(imageName: "arrow.2.squarepath")
                Spacer()
                TweetActionButton(imageName: "heart")
                Spacer()
                TweetActionButton(imageName: "bookmark")
            }
            .padding()
            .foregroundColor(.gray)
        }
        .padding(.top)
        .padding(.horizontal)
        Divider()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}

struct TweetActionButton: View {
    let imageName: String
    var body: some View {
        
        Button {
            //
        } label: {
            Image(systemName: imageName)
                .font(.subheadline)
        }
    }
}
