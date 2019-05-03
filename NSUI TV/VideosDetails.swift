/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct VideosDetails : Codable {
	let kind : String?
	let etag : String?
	let nextPageToken : String?
	let regionCode : String?
	let pageInfo : PageInfo?
	let items : [Items]?

	enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case etag = "etag"
		case nextPageToken = "nextPageToken"
		case regionCode = "regionCode"
		case pageInfo = "pageInfo"
		case items = "items"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		kind = try values.decodeIfPresent(String.self, forKey: .kind)
		etag = try values.decodeIfPresent(String.self, forKey: .etag)
		nextPageToken = try values.decodeIfPresent(String.self, forKey: .nextPageToken)
		regionCode = try values.decodeIfPresent(String.self, forKey: .regionCode)
		pageInfo = try values.decodeIfPresent(PageInfo.self, forKey: .pageInfo)
		items = try values.decodeIfPresent([Items].self, forKey: .items)
	}

}

struct Default : Codable {
    let url : String?
    let width : Int?
    let height : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        case width = "width"
        case height = "height"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
    
}

struct High : Codable {
    let url : String?
    let width : Int?
    let height : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        case width = "width"
        case height = "height"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
    
}

struct Id : Codable {
    let kind : String?
    let videoId : String?
    
    enum CodingKeys: String, CodingKey {
        
        case kind = "kind"
        case videoId = "videoId"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        kind = try values.decodeIfPresent(String.self, forKey: .kind)
        videoId = try values.decodeIfPresent(String.self, forKey: .videoId)
    }
    
}

struct Items : Codable {
    let kind : String?
    let etag : String?
    let id : Id?
    let snippet : Snippet?
    
    enum CodingKeys: String, CodingKey {
        
        case kind = "kind"
        case etag = "etag"
        case id = "id"
        case snippet = "snippet"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        kind = try values.decodeIfPresent(String.self, forKey: .kind)
        etag = try values.decodeIfPresent(String.self, forKey: .etag)
        id = try values.decodeIfPresent(Id.self, forKey: .id)
        snippet = try values.decodeIfPresent(Snippet.self, forKey: .snippet)
    }
    
}

struct Medium : Codable {
    let url : String?
    let width : Int?
    let height : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        case width = "width"
        case height = "height"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
    
}


struct PageInfo : Codable {
    let totalResults : Int?
    let resultsPerPage : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case totalResults = "totalResults"
        case resultsPerPage = "resultsPerPage"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        totalResults = try values.decodeIfPresent(Int.self, forKey: .totalResults)
        resultsPerPage = try values.decodeIfPresent(Int.self, forKey: .resultsPerPage)
    }
    
}

struct Snippet : Codable {
    let publishedAt : String?
    let channelId : String?
    let title : String?
    let description : String?
    let thumbnails : Thumbnails?
    let channelTitle : String?
    let liveBroadcastContent : String?
    
    enum CodingKeys: String, CodingKey {
        
        case publishedAt = "publishedAt"
        case channelId = "channelId"
        case title = "title"
        case description = "description"
        case thumbnails = "thumbnails"
        case channelTitle = "channelTitle"
        case liveBroadcastContent = "liveBroadcastContent"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        publishedAt = try values.decodeIfPresent(String.self, forKey: .publishedAt)
        channelId = try values.decodeIfPresent(String.self, forKey: .channelId)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        thumbnails = try values.decodeIfPresent(Thumbnails.self, forKey: .thumbnails)
        channelTitle = try values.decodeIfPresent(String.self, forKey: .channelTitle)
        liveBroadcastContent = try values.decodeIfPresent(String.self, forKey: .liveBroadcastContent)
    }
    
}


struct Thumbnails : Codable {
    let _default : Default?
    let medium : Medium?
    let high : High?
    
    enum CodingKeys: String, CodingKey {
        
        case _default = "default"
        case medium = "medium"
        case high = "high"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        _default = try values.decodeIfPresent(Default.self, forKey: ._default)
        medium = try values.decodeIfPresent(Medium.self, forKey: .medium)
        high = try values.decodeIfPresent(High.self, forKey: .high)
    }
}
