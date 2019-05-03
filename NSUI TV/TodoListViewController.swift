//
//  ViewController.swift
//  NSUI TV
//
//  Created by XIPHIAS Softwares on 15/03/19.
//  Copyright © 2019 A&M. All rights reserved.
//

import UIKit
import SDWebImage
import YouTubePlayer

class TodoListViewController: UITableViewController {
    

    
    var videosDetails : VideosDetails! = nil
    let videoBaseUrl = "https://www.youtube.com/watch?v="
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let url = "https://www.googleapis.com/youtube/v3/search?part=id,snippet&maxResults=20&channelId=UCCq1xDJMBRF61kiOgU90_kw&key=AIzaSyBRLPDbLkFnmUv13B-Hq9rmf0y7q8HOaVs"
        let urlObj = URL(string: url)
        URLSession.shared.dataTask(with: urlObj!) {(data, response, error) in
            do {
                //here dataResponse received from a network request
                let decoder = JSONDecoder()
                let model = try decoder.decode(VideosDetails.self, from: data ?? Data()) //Decode JSON Response Data
                print(model)
                self.videosDetails = model
                DispatchQueue.main.async{
                    self.tableView.reloadData()
                }
            }
            catch let parsingError {
                print("Error", parsingError)
            }
        }.resume()
     
        
        
    }
    
    //MARK - TableView Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.videosDetails == nil ? 0 : self.videosDetails.items?.count ?? 0
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
            print("You tapped cell number \(indexPath.section).")
            print("Cell cliked value is \(indexPath.row)")
            
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controller : YouTubePlayerViewController = storyboard.instantiateViewController(withIdentifier: "YouTubePlayerViewController") as! YouTubePlayerViewController
        
        
        controller.publishedAt = videosDetails.items?[indexPath.row].snippet?.publishedAt ?? ""
        controller.videoId = videosDetails.items?[indexPath.row].id?.videoId ?? ""
        DispatchQueue.main.async{
            self.navigationController?.pushViewController(controller, animated: true)
        }
        }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
            as! ItemCell
        cell.headlineTitle?.text = videosDetails.items?[indexPath.row].snippet?.channelTitle
        cell.headlineTxt?.text = videosDetails.items?[indexPath.row].snippet?.description

        if let imageLink : String = videosDetails.items?[indexPath.row].snippet?.thumbnails?._default!.url {
            print(videosDetails.items?[indexPath.row].snippet?.thumbnails?._default!.url ?? "")
            print(imageLink)
            cell.headlineImgView2?.sd_setImage(with: URL.init(string: imageLink), placeholderImage: UIImage.init(named: "580b57fcd9996e24bc43c548"), options: SDWebImageOptions.cacheMemoryOnly, completed: nil)
        }
        else {
            print("Image url is nil")
        }
        cell.headlineDateAndTime.text = videosDetails.items?[indexPath.row].snippet?.publishedAt ?? ""
        return cell
        
    
    }
    
    
}

