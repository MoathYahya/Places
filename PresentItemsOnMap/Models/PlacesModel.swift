//
//  PlacesModel.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/26/24.
//

import Foundation

struct PlaceModel: Hashable {
    var id: Int
    var name: String
    var details: String
    var image: String
    var latitude: Double
    var longtitude: Double
}

struct PlacesData {
    
    func allPlaces() -> [PlaceModel] {
        var placesArray = [PlaceModel]()
        
        let abdaliPlace = PlaceModel(id:1,
                                     name: "Abdali",
                                     details: "Modern mall featuring a variety of brand-name shops, a food court & outdoor cafes, on 4 levels.",
                                     image: "abdali",
                                     latitude: 31.9640544,
                                     longtitude: 35.9057354)
        
        let alwahaPlace = PlaceModel(id: 2,
                                     name: "Alwaha Circle",
                                     details: " It is a very large traffic circle that has two sets of tunnels below, on two levels below ground.",
                                     image: "alwahaCircle",
                                     latitude: 31.9929841,
                                     longtitude: 35.8673337)
        
        let hiltonPlace = PlaceModel(id: 3,
                                     name: "Hilton",
                                     details: "Located in the commercial district of Shmeisani, Hilton Amman is contemporary designed hotel within a walking distance from shopping centers. It offers an indoor pool, a gym, a spa and a restaurant that offers a personalized room service.",
                                     image: "hilton",
                                     latitude: 31.966742,
                                     longtitude: 35.8969247)
        
        let meccaMallPlace = PlaceModel(id: 4,
                                        name: "Mecca Mall",
                                        details: "It is a shopping mall in Amman, Jordan. Its name is derived from its location on Mecca Street.",
                                        image: "meccaMall",
                                        latitude: 31.9775067,
                                        longtitude: 35.8407051)
        
        
        let rainbowStreetPlace = PlaceModel(id: 5,
                                            name: "Rainbow Street",
                                            details: "Rainbow Street, originally named Abu Bakr al Siddiq street, is a public space in the historic area of Jabal Amman, near the center of downtown Amman, Jordan.",
                                            image: "reanbowStreet",
                                            latitude: 31.9491847,
                                            longtitude: 35.9248951)
        
        let RomanTheaterAmmanPlace = PlaceModel(id: 6,
                                                name: "Roman Theater Amman",
                                                details: "Roman Theatre of Amman is a 6,000-seat, 2nd-century Roman theatre. A famous landmark in the Jordanian capital, it dates back to the Roman period when the city was known as Philadelphia.",
                                                image: "RomanTheaterAmman",
                                                latitude: 31.9517165,
                                                longtitude: 35.9368315)
        
        let royalPlace = PlaceModel(id: 7,
                                    name: "Royal",
                                    details: "Towering over Amman, Le Royal is home to a luxurious 3-floor shopping mall. Panoramic fitness rooms, a mudroom and a hairdresser are available at the spa.",
                                    image: "royal",
                                    latitude: 31.9533997,
                                    longtitude: 35.9064499)
        
        let tajMallPlace = PlaceModel(id: 8,
                                      name: "tajMall",
                                      details: "Palatial high-end mall with 190+ outlets on 5 levels, terrace restaurants & a 16-screen cinema.",
                                      image: "tajMall",
                                      latitude: 31.941295,
                                      longtitude: 35.8854791)
        
        let areefaMallPlace = PlaceModel(id: 9,
                                      name: "Areefa Mall",
                                      details: "Discover the delightful flavors of Ramadan at Areefa Mall's Sizzle Grill, where mouthwatering deals await. Indulge in our special Ramadan combo for just 4.50 JOD, featuring juicy burgers, crispy fries, a fresh garden salad, dates, a thirst-quenching Pepsi, and more.",
                                      image: "areefaMall",
                                      latitude: 31.9769068,
                                      longtitude: 35.9115157)
        
        placesArray = [abdaliPlace, alwahaPlace, hiltonPlace, meccaMallPlace, rainbowStreetPlace, RomanTheaterAmmanPlace, royalPlace, tajMallPlace, areefaMallPlace]
        
        return placesArray
    }
}
