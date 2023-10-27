//
//  ContentView.swift
//  ImageZStack
//
//  Created by Giuseppe Sapienza on 17/5/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            profileImage
            sectionTitleView
            
            ScrollView(showsIndicators: false) {
                myCustomImage(etnaImageURL)
                myCustomImage(melbourneImageURL)
                myCustomImage(taorminaImageURL)
                myCustomImage(sydneyImageURL)
            }
            
        }.padding()
    }
    
    var profileImage: some View {
        Image("peppe")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
    
    var sectionTitleView: some View {
        HStack {
            Text("Pictures")
                .font(.title2)
                .padding(.top, 20)
            
            Spacer()
        }
    }
    
    func myCustomImage(_ url: URL) -> some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .clipped()
        } placeholder: {
            ProgressView()
        }
        .frame(height: 200)
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(8)
    }
    
    let etnaImageURL: URL = URL(string: "https://static.independent.co.uk/2021/02/25/16/APTOPIX_Italy_Etna_Volcano_Eruption_91254.jpg?quality=75&width=982&height=726&auto=webp")!
    
    let melbourneImageURL: URL = URL(string: "https://media.istockphoto.com/photos/melbourne-at-dusk-picture-id493621192?k=20&m=493621192&s=612x612&w=0&h=G2D4HuVz8TbTQIOiySadIL4ZYLQO36kf8kyjuDITWqU=")!
    
    let taorminaImageURL: URL = URL(string: "https://www.thethinkingtraveller.com/media/Resized/SICILY%20local%20areas/Taormina_and_beaches/1920/Taormina%20(1).jpg")!
    
    let sydneyImageURL: URL = URL(string: "https://a.cdn-hotels.com/gdcs/production0/d1645/0c67ff64-cf54-4886-91dd-89aa601463af.jpg")!
    
}

#Preview {
    ContentView()
}
