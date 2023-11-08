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
    
    var body: some View {
        
        ZStack {
            Color.mint
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showPopover.toggle()
            }, label: {
                Text("Knopka")
            })
            .popover(isPresented: $showPopover, content: {
                Text("Kak dela ?")
                    .presentationCompactAdaptation(.popover)
                    .foregroundColor(.black)
            })
            .font(.system(size: 30, weight: .black, design: .rounded))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.black)
            .cornerRadius(15)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
