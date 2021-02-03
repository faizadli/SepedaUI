//
//  ContentView.swift
//  SepedaUI
//
//  Created by faiz on 03/02/21.
//

import SwiftUI

//Model Data
struct ProductModel: Identifiable {
    let id: Int
    let namaProduct: String
    let fotoProduct: String
    let hargaProduct: Int
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id: Int, namaProduct: String, fotoProduct: String, hargaProduct: Int, lokasi: String, ratingCount: Int, jumlahRating: Int) {
        
        self.id = id
        self.namaProduct = namaProduct
        self.fotoProduct = fotoProduct
        self.hargaProduct = hargaProduct
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
    }
}

struct ContentView: View {
    var body: some View {
        Product()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product: View {
    var body: some View{
        VStack(alignment: .leading){
            // foto
            ZStack(alignment: .topTrailing){
                Image("foto1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                    .clipped()
                
                Button(action: {print("Liked")}){
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(.red)
                }
            }
            
            Text("Sepeda Pollygon")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp. 2.000.00")
                .font(.title)
                .foregroundColor(.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text("Kab. Banyumas")
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top, 5)
            
            Button(action: {print("ditambahkan")}){
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "cart")
                        Text("Tambah ke keranjang")
                            .font(.callout)
                            .padding()
                    }
                    Spacer()
                }
            }
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
        }
        .background(Color("warna"))
        .cornerRadius(15)
    }
}
