//
//  ContentView.swift
//  myGrocery
//
//  Created by mac on 12/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var groceryItems = ["chocolate milk", "ice tea", "indomie", "kit kat", "pringles"]
    @State var newItem = ""
    var body: some View {
        VStack {
            List (groceryItems, id:\.self){i in
                HStack{
                    Image(i)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                    Text(i)
                }
            }
            HStack{
                Button {
                    groceryItems.append(newItem)
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 70, height: 60)
                        .background(.green)
                        .cornerRadius(10)
                }

                TextField("New Items", text: $newItem)
                
                Button {
                    groceryItems.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .frame(width: 70, height: 60)
                        .background(.red)
                        .cornerRadius(10)
                }

            } .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
