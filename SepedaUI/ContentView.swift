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
    
    let data : [ProductModel] = [
        ProductModel(id: 1, namaProduct: "Polygon Xtrada", fotoProduct: "foto1", hargaProduct: 2000000, lokasi: "kab. Banyumas", ratingCount: 4, jumlahRating: 56),
        ProductModel(id: 2, namaProduct: "Polygon Heist", fotoProduct: "foto2", hargaProduct: 3000000, lokasi: "kab. Bogor", ratingCount: 5, jumlahRating: 50),
        ProductModel(id: 3, namaProduct: "Polygon Monarch", fotoProduct: "foto3", hargaProduct: 5000000, lokasi: "kab. Brebes", ratingCount: 4, jumlahRating: 56),
        ProductModel(id: 4, namaProduct: "United Detroit", fotoProduct: "foto4", hargaProduct: 9000000, lokasi: "kab. Pekalongan", ratingCount: 4, jumlahRating: 56),
        ProductModel(id: 5, namaProduct: "United Miami", fotoProduct: "foto5", hargaProduct: 9000000, lokasi: "kab. Pemalang", ratingCount: 3, jumlahRating: 56),
        ProductModel(id: 6, namaProduct: "United Patrol", fotoProduct: "foto6", hargaProduct: 2000000, lokasi: "kab. Banyumas", ratingCount: 4, jumlahRating: 56),
        ProductModel(id: 7, namaProduct: "Exotic M56", fotoProduct: "foto7", hargaProduct: 6000000, lokasi: "kab. Banyumas", ratingCount: 5, jumlahRating: 56),
        ProductModel(id: 8, namaProduct: "Exotic J98", fotoProduct: "foto8", hargaProduct: 2000000, lokasi: "kab. Banyumas", ratingCount: 4, jumlahRating: 56),
        ProductModel(id: 9, namaProduct: "Genio Xtrada", fotoProduct: "foto9", hargaProduct: 8000000, lokasi: "kab. Banyumas", ratingCount: 3, jumlahRating: 56),
        ProductModel(id: 10, namaProduct: "Pacific M898", fotoProduct: "foto10", hargaProduct: 2000000, lokasi: "kab. Banyumas", ratingCount: 4, jumlahRating: 56),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(data) { row in
                    VStack(spacing:10) {
                        Product(data: row)
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Sepeda MTB")
            .navigationBarItems(
                trailing:
                    HStack(spacing: 20){
                        Button(action: {print()})
                        {
                            Image(systemName: "person.fill")
                        }
                        
                        Button(action: {print()})
                        {
                            Image(systemName: "cart.fill")
                        }
                      
                        
                    }
                )
        }
        .accentColor(Color.secondary)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product: View {
    let data: ProductModel
    
    var body: some View{
        VStack(alignment: .leading){
            // foto
            ZStack(alignment: .topTrailing){
                Image(self.data.fotoProduct)
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
            
            Text(self.data.namaProduct)
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp. \(self.data.hargaProduct)")
                .font(.title)
                .foregroundColor(.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text(self.data.lokasi)
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    ForEach(0..<self.data.ratingCount){
                        items in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
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
