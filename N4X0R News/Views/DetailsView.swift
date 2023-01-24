//
//  DetailsView.swift
//  N4X0R News
//
//  Created by Roger Espinoza on 23/1/23.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}





