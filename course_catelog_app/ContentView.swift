//
//  ContentView.swift
//  course_catelog_app
//
//  Created by Harsh Soni on 22/01/23.
//

import SwiftUI

struct ContentView: View {
    
    var rupeeSymbol:String = "\u{20B9}";
    
    var body: some View {
        HStack {
            Image("mt-1")
                .resizable()
                .scaledToFit()
                .frame(height:95)
                .padding(.trailing, 10)
            
            VStack(alignment: .leading, spacing: 30) {
                Text("Course A preparation Mock test")
                    .fontWeight(.medium)
                    .font(.headline)
                
                Text("\(rupeeSymbol) 499")
                    .fontWeight(.medium)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
