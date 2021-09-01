//
//  ComicDetailsView.swift
//  ComicsViewerApp
//
//  Created by Dasha Gurinovich on 1.09.21.
//

import XkcdComicsKit
import SwiftUI

struct ComicDetailsView: View {
    let comic: XkcdComic
    
    var body: some View {
        VStack(spacing: 20) {
            Text(comic.title)
                .font(.title)
            
            if let uiImage = UIImage(data: comic.imageData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            if let publicationDate = comic.publicationDate {
                Text("Publication Date: ")
                    .fontWeight(.semibold) +
                    
                Text(publicationDate.getFormattedDate(format: "dd MMMM yyyy"))
            }
            
            Text(comic.description)
                .font(.body)
            
            Spacer()
            
            self.buttonsPanel
        }
        .multilineTextAlignment(.center)
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .navigationBarTitle("", displayMode: .inline)
    }
    
    private var buttonsPanel: some View {
        HStack {
            PanelButton(systemImageName: "info.circle.fill") {
                
            }
            
            Spacer()
            
            PanelButton(systemImageName: "heart") {
                
            }
        }
    }
}
