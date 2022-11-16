//
//  VideoView.swift
//  lilly_trecker
//
//  Created by Hui Xiao on 11/14/22.
//

import SwiftUI

struct VideoView: View {
    
    let videoURL1 = Bundle.main.url(forResource: "v12044gd0000cbg74e3c77u8ud80lp70", withExtension: "MP4")!
    let videoURL2 = Bundle.main.url(forResource: "v12044gd0000cbp4n6rc77ubj96gjbfg", withExtension: "MP4")!
    let videoURL3 = Bundle.main.url(forResource: "v12044gd0000cbhtd6bc77ua5727vmvg", withExtension: "MP4")!
    let videoURL4 = Bundle.main.url(forResource: "v12044gd0000cc41dorc77udi8lvo07g", withExtension: "MP4")!

    var body: some View {
        let urls = [videoURL1, videoURL2, videoURL3, videoURL4]
        EnhancedVideoPlayer(urls, endAction: .loop)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
