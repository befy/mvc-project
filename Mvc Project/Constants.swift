//
//  Constants.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import Foundation

let christianTroy = Person(imageName: "christian_troy", fullName: "Christian Troy", location: "Los Angeles, CA")
let seanMcNamara = Person(imageName: "sean_mcnamara", fullName: "Sean McNamara", location: "Los Angeles, CA")
let nealCaffrey = Person(imageName: "neal_caffrey", fullName: "Neal Caffrey", location: "New York City, NY")

let feed1 = Feed.init(person: nealCaffrey, date: "2m ago", likeCount: 19, commentCount: 2, postImage: nil, content: """
Around-the-world trip remains the world’s greatest journey.
For two out of every three people, this is the ultimate travel experience, according to recent research. Needless to say, in a world obsessed by travel, travelers and travel agents are both looking for the cheapest tickets and airfares available.

Cheap airline tickets, in most cases, can be obtained from wholesale dealers and discounters.

If your requirements are simple – you want a round-trip ticket from one place to another, you have a particular airline on your mind and you have definite dates; then you can go directly to the source – to the ticket discount agency which buys cheap tickets in bulk from
""")

let feed2 = Feed(person: christianTroy, date: "1h ago", likeCount: 2928, commentCount: 23, postImage: nil, content: """
The beginning and end of the novel showed a lot of promise…dealing…with both Jyn's early years with Saw, and with her subsequent capture by the Empire. Both were dark, gritty, and well plotted, even in their YA context.
""")

let feed3 = Feed(person: seanMcNamara, date: "2h ago", likeCount: 4987, commentCount: 293, postImage: nil, content: """
	As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the host to your journey; without Her we could not find the unfolding adventures that attract and feed our souls.

I have found some valuable resources for us to use and publisize, all of which are dedicated to responsible travel and care of our environment.
""")

let feed4 = Feed(person: nealCaffrey, date: "2h ago", likeCount: 9987, commentCount: 2201, postImage: nil, content: """
The environmentally conscious alternative to the American Automobile Association, offering auto and bicycle road assistance, has resources on hybrid car rentals, green lodging, and carbon offsets.

Let us join and use these groups when planning our trips. By raising our level of consciousness and employing ‘green’ tactics and travel itineraries we will, each in our own small way, be contributing to a healthier world where we act as stewards to the environment while discovering the rich and breathtaking rewards of travel.
""")

let feed5 = Feed.init(person: christianTroy, date: "2h ago", likeCount: 1981, commentCount: 42, postImage: nil, content: """
Around-the-world trip remains the world’s greatest journey.
For two out of every three people, this is the ultimate travel experience, according to recent research. Needless to say, in a world obsessed by travel, travelers and travel agents are both looking for the cheapest tickets and airfares available.

Cheap airline tickets, in most cases, can be obtained from wholesale dealers and discounters.

If your requirements are simple – you want a round-trip ticket from one place to another, you have a particular airline on your mind and you have definite dates; then you can go directly to the source – to the ticket discount agency which buys cheap tickets in bulk from
""")
