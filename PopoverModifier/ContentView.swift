//  /*
//
//  Project: PopoverModifier
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.11.2023
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var showPopover: Bool = false
    @State private var feedBack: [String] = [
    "Agerage!",
    "Happy :)",
    "Excited :)",
    
    ]
    
    var body: some View {
        
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showPopover.toggle()
            }, label: {
                Text("Describe your mood!")
            })
            .font(.system(size: 30, weight: .black, design: .rounded))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.mint)
            .cornerRadius(15)
            .padding()
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                ScrollView {
                    VStack(alignment: .leading, spacing: 10, content: {
                        ForEach(feedBack, id: \.self) { option in
                            Button(option) {
                                
                            }
                            if option != feedBack.last {
                                Divider()
                            }
                        }
                    })
                    .padding()
                    .presentationCompactAdaptation(.popover)
                    .font(.system(size: 18, weight: .black, design: .rounded))
                    .foregroundColor(.mint)
                    //.background(Color.mint)
                }
            })

        }
    }
}

#Preview {
    ContentView()
}
