//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by Angelos Staboulis on 15/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var readout:String
    var body: some View {
        ZStack{
            Color.blue
            VStack{
                HStack{
                    Text("SwiftUICalculator").foregroundColor(.white)
                }
                HStack{
                    TextField("0.", text: $readout).textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 215, height: 45, alignment: .center).multilineTextAlignment(.trailing)
                }
                HStack{
                    Button("9") {
                        readout = readout + "9"
                    }.padding(25).foregroundColor(.white)
                    Button("8") {
                        readout = readout + "8"
                    }.padding(25).foregroundColor(.white)
                    Button("7") {
                        readout = readout + "7"
                    }.padding(25).foregroundColor(.white)
                    Button("/") {
                        readout = readout + "/"
                    }.padding(25).foregroundColor(.white)
                }.padding(15)
                HStack{
                    Button("6") {
                        readout = readout + "6"
                    }.padding(25).foregroundColor(.white)
                    Button("5") {
                        readout = readout + "5"
                    }.padding(25).foregroundColor(.white)
                    Button("4") {
                        readout = readout + "4"
                    }.padding(25).foregroundColor(.white)
                    Button("*") {
                        readout = readout + "*"
                    }.padding(25).foregroundColor(.white)
                }.padding(15)
                HStack{
                    Button("3") {
                        readout = readout + "3"
                    }.padding(25).foregroundColor(.white)
                    Button("2") {
                        readout = readout + "2"
                    }.padding(25).foregroundColor(.white)
                    Button("1") {
                        readout = readout + "1"
                    }.padding(25).foregroundColor(.white)
                    Button("-") {
                        readout = readout + "-"
                    }.padding(25).foregroundColor(.white)
                }
                HStack{
                    Button("0") {
                        readout = readout + "0"
                    }.padding(25).foregroundColor(.white)
                    Button(".") {
                        readout = readout + "."
                    }.padding(25).foregroundColor(.white)
                    Button("=") {
                        let expression = NSExpression(format: readout)
                        let result = expression.expressionValue(with: nil, context: nil)
                        let format = String(format:"%@",result as! CVarArg)
                        readout = format
                    }.padding(25).foregroundColor(.white)
                    Button("+") {
                        readout = readout + "+"
                    }.padding(25).foregroundColor(.white)
                }
                HStack{
                    Button("Clear") {
                        readout = ""
                    }.padding(25).foregroundColor(.white)
                }
            }.background(Rectangle().fill().foregroundColor(.blue))
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(readout: "")
    }
}
