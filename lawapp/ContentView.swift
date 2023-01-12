//
//  ContentView.swift
//  lawapp
//
//  Created by rana omar zaheri on 15/06/1444 AH.
//



import SwiftUI

struct ContentView: View {
    @State var searchText: String = ""
    @State private var showSheet: Bool = false
    @State private var showPopover: Bool = false
    var body: some View {
        HStack{
            
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
                                .accessibilityLabel(Text("Search Location"))
                                .foregroundColor(.blue)
                            
                          
                            Text("Playing music during prayer times 1000 SAR")
                                .accessibilityLabel(Text("Playing music during prayer times 1000 SAR"))
                                .bold()
                                .foregroundColor(.black)
                                .font(Font.system(size:21))
                                .multilineTextAlignment(.center)
                            Text("The financial penalty shall be doubled when the violation is repeated and be  2000 SAR")
                                .accessibilityLabel(Text("The financial penalty shall be doubled when the violation is repeated and be  2000 SAR"))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            Divider()
                            Text("For Violation Inquiry: ")
                                .accessibilityLabel(Text("For Violation Inquiry:"))
                                .foregroundColor(.black)
                            HStack{
                                Text("Visit")
                                    .accessibilityLabel(Text("Visit"))
                                    .foregroundColor(.black)
                            
                                Link("efaa", destination: URL(string: "https://efaa.sa")!)
                                    .accessibilityLabel(Text("efaa"))
                                VStack(spacing: -44){
                                    Text("to check and review all your  ")
                                        .accessibilityLabel(Text("to check and review all your  "))
                                        .foregroundColor(.black)
                                        .presentationDetents([.large, .medium, .fraction(0.75)])
                             
                                
                                }
                            
                        }
                        .padding()
                            Text("violations in the government agencies.")
                                .accessibilityLabel(Text("violations in the government agencies."))
                                .foregroundColor(.black)
                    }
                        
            }

                    .padding()

               
           }
           
            }
            
           
        }

    }
    

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
