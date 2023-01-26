//
//  ContentView.swift
//  course_catelog_app
//
//  Created by Harsh Soni on 22/01/23.
//

import SwiftUI

var rupeeSymbol:String = "\u{20B9}"

struct ContentView: View {

    var mockData: [MockTest] = MockTestList.mockDataList
    
    
    var body: some View {
        NavigationView {
            List(mockData, id: \.id) { item in
                NavigationLink(
                    destination: MockTextDetailsView(mockTestData: item)) {
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height:100)
                        .padding(.trailing, 10)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text(item.title)
                                .fontWeight(.medium)
                                .font(.headline)
                            
                            HStack(spacing: 3) {
                                if (item.sellingPrice != "Free") {
                                    Text(rupeeSymbol)
                                        .fontWeight(.medium)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                
                                
                                Text(item.originalPrice)
                                    .fontWeight(.medium)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .strikethrough()
                                
                                Text(item.sellingPrice)
                                    .fontWeight(.medium)
                                    .font(.subheadline)
                                    .foregroundColor(item.sellingPrice == "FREE" ? .green : .gray)
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
