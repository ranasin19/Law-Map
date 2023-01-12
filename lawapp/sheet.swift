//
//  sheet.swift
//  lawapp
//
//  Created by rana omar zaheri on 17/06/1444 AH.
//

import SwiftUI

struct sheet: View {
    @State private var showSheet: Bool = false
    var body: some View {
            Button  { print("s")
                showSheet.toggle()
        } label: {
            
            Image(systemName: "shield.lefthalf.filled")
                .resizable()
                .scaledToFit()
                .frame(width: 23, height: 23)
                .foregroundColor(Color.blue)
            
                .sheet(isPresented: $showSheet) {
                 
                
                    VStack( spacing: 20
                    ) {
                      
                        Text("About")
                            .foregroundColor(.blue)
                        
                      
                        Text("Playing music during prayer times 1000 SAR")
                            .bold()
                            .foregroundColor(.black)
                            .font(Font.system(size:21))
                        Text("The financial penalty shall be doubled when the violation is repeated and be  2000 SAR")
                           
                            .foregroundColor(.black)
                        Divider()
                        Text("For Violation Inquiry: ")
                            .foregroundColor(.black)
                        HStack{
                            Text("Visit")
                                .foregroundColor(.black)
                        
                            Link("efaa", destination: URL(string: "https://efaa.sa")!)
                            VStack(spacing: -44){
                                Text("to check and review all your  ")
                                    .foregroundColor(.black)
                                    .presentationDetents([.large, .medium, .fraction(0.75)])
                         
                            
                            }
                        
                    }
                    .padding()
                        Text("violations in the government agencies.")
                            .foregroundColor(.black)
                }
                    
        }

                .padding()

           
       }
    }
}

struct sheet_Previews: PreviewProvider {
    static var previews: some View {
        sheet()
    }
}
