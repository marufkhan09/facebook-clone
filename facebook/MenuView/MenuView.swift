//
//  MenuNewView.swift
//  facebook
//
//  Created by Maruf Khan on 4/8/24.
//

import SwiftUI

struct MenuView: View {
    
    @State private var showLogoutAlert: Bool
    init(showLogoutAlert: Bool) {
        self.showLogoutAlert = showLogoutAlert
    }
    
    var body: some View {
        NavigationStack{
            GeometryReader { proxy in
                ScrollView {
                    VStack{
                        MenuHeaderView()
                        
                        HStack {
                            Text("Your Shortcuts")
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.systemGray))
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 8)
                        
                        MenuGridView(width: proxy.size.width).padding(.vertical)
                        
                    }
                    
                    CustomButton(title:"See more" ,backgroundColor: Color(.systemGray3), textColor: Color(.darkGray), iconColor: Color(.darkGray), cornerRadius: 8,height: 44, width: proxy.size.width - 30) {
                        
                    }
                    
                    
                    SettingView().padding(.vertical)
                    
                    CustomButton(title:"Log Out" ,backgroundColor: Color(.systemGray3), textColor: Color(.darkGray), iconColor: Color(.darkGray), cornerRadius: 8,height: 44, width: proxy.size.width - 30) {
                        showLogoutAlert.toggle()
                    }
                    
                } .alert("Confirm Logout", isPresented: $showLogoutAlert) {
                    Button("Cancel", role: .cancel) { }
                    Button("Logout", role: .destructive) {
                        // Perform logout action here
                        print("Logged out")
                    }
                } message: {
                    Text("Are you sure you want to log out?")
                }
                    .scrollIndicators(.hidden).background(Color(.systemGray6))
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("Menu")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            HStack(spacing: 24) {
                                Image(systemName: "gearshape.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.primary)
                                
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.primary)
                            }
                        }
                    }                .toolbarBackground(Color(.systemGray6), for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
            }
        }
    }
}

#Preview {
    MenuView(showLogoutAlert: false)
}


