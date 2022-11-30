//
//  ProfileView.swift
//  Twitter-SwiftUI-Firebase
//
//  Created by fmss on 30.11.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            userInfoDetails
 
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 0, y: 0)
                }

                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .foregroundColor(.black)
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 36)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }

            
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Samet Koyuncu")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            
            Text("@sametkoyuncu")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("iOS Developer at FMSS")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Istanbul")
                }
                HStack {
                    Image(systemName: "link")
                    Text("www.samet.page")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
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
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}
