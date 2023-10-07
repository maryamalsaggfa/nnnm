//
//  ContentView.swift
//  nnnm
//
//  Created by maryam on 22/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                
                Image(systemName:"chevron.backward").imageScale(.large)
                    .foregroundColor(Color(hex:"#028175"))
                    .padding(.bottom,700)
                    .padding(.trailing,300)
            }
            VStack{
                Image("fundsImage")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 300,height: 300)
                    .padding(.bottom,400)
                    .padding(.leading,90)
            }
            VStack{
                Text("   الصحيح الهدف")
                    .font(.system(size: 12))
                    .padding(.leading,290).foregroundColor(Color(hex:"#028175"))
                TextField("٩٠٠", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 330,height:48)
                    .padding(.bottom,350)
            }
            VStack{
                Text("مصادر دخلك الاخرى")
                    .font(.system(size: 12))
                    .padding(.leading,200).foregroundColor(Color(hex:"#028175"))
                TextField("٩٠٠", text: $text)
                    .frame(width: 330,height:48)
                    .padding(.bottom,170)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
            VStack{
                Text("راتبك")
                    .font(.system(size: 12))
                    .padding(.leading,290).foregroundColor(Color(hex:"#028175"))
                TextField("٩٠٠", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 330,height:48)
                    .padding(.bottom,260)
            }
            VStack{
                Text("المعلومات المالية")
                    .font(.system(size: 21))
                    .padding(.bottom,700)
                    .padding(.leading,15)
                    .foregroundColor(Color(hex:"#028175"))
            }
            VStack{
                Text("هذي مصادر دخلك اذا صار فيها شي جديد حدثها")
                    .font(.system(size: 10))
                    .padding(.bottom,650)
                    .padding(.leading,150)
                    .foregroundColor(Color(hex:"#028175"))
            }
        VStack{
            Spacer()
            Image("bottomEffect")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 1000)
                .padding(.trailing,40)
                .padding(.top,500)
            
        }
        VStack {
            Button(action: {
                print("done")
            }){
                Text("حدث")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 330 ,height: 48)
                    .background(Color(hex:"02B78B"))
                    .cornerRadius(24)
                    .padding(.bottom,50)
                
            }
        }
        
        
    
}
    .padding()
}
}

    
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}
    


#Preview {
    ContentView()
}
