//
//  ContentView.swift
//  CountUpApp
//
//  Created by Oren on 2022/04/18.
//

import SwiftUI

struct ContentView: View {
    
    @State var newItem: String = ""
    @State var toDoList : [String] = ["買い物", "選択",""]
    var body: some View {
        VStack{
            //Title
            HStack{
                Text("新しい予定の追加").font(.largeTitle).padding(.leading)
                
                Spacer()
            }
            //List Title
            HStack{
                TextField("新しい予定を入力してください", text: $newItem).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 300)
                //Button機能
                Button(action: {
                    //ここに処理を書く？
                    self.toDoList.append(self.newItem)
                    self.newItem = ""
                }) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 50, height: 30).foregroundColor(.green)
                        
                        Text("追加").foregroundColor(.white)
                    }
                }
            }
            //List見出し
            HStack{
                Text("To Do List").font(.largeTitle).padding(.leading)
                
                
                Spacer()
                
            }
            
            List(toDoList, id: \.self){ item in
                Text(item)
            }
            
            Spacer()
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
