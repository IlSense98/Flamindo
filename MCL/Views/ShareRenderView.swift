//
//  ShareRenderView.swift
//  MCL
//
//  Created by Michel Andre Pellegrin Quiroz on 01/06/24.
//

import SwiftUI
import SwiftData

struct ShareRenderView: View {
    let album: Album
    
    var body: some View {
        AlbumCard(album: album, isExpanded: true)
            .shadow(color: Color.black.opacity(0.15), radius: 20)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
    }
}