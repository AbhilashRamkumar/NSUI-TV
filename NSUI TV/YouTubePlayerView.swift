//
//  YouTubePlayerView.swift
//  NSUI TV
//
//  Created by XIPHIAS Softwares on 20/03/19.
//  Copyright © 2019 A&M. All rights reserved.
//

import UIKit
import YouTubePlayer

class YouTubePlayerViewController: UIViewController {

    @IBOutlet weak var videoPlayer: YouTubePlayerView!
    
    @IBOutlet weak var headLineDateAndTime: UILabel!
    
    var videoId : String = ""
    var publishedAt : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoPlayer.loadVideoID("sXvXJLJdQSs")
        headLineDateAndTime.text = self.publishedAt
        print("publishedAt = ",self.publishedAt)
        }
        
   

}
    
    

    
    
    
    
    

    
    

