//
//  Api.swift
//  hw6
//
//  Created by Andy Huang on 3/8/23.
//

import Foundation

/* Returns a Dog optional type from calling the dogAPI and decoding the fetched JSON.
 Do NOT use this in ContentView after you are done implementing it. Use fetchDoggy() instead.
 
 Ex1 fetchDog() is able to get a valid response from API: fetchDog() -> Dog
 Ex2 fetchDog() is NOT able to get a valid response from API: fetchDog() -> nil
 */
func fetchDog() async -> Dog? {
    // TODO: Part 2b - Create url object.
    guard let url = URL(string: "https://dog.ceo/api/breeds/image/random") else {
        return nil
    }
    
    // Wrap api call inside a do/catch block in case an error is thrown.
    do {
        // Get data (the second item (URLResponse) is metadata we don't need so we'll just assign it to _).
        let (data, _) = try await URLSession.shared.data(from: url)
        // Decode JSON into a myDataModel struct.
        if let decodedResponse = try? JSONDecoder().decode(Dog.self, from: data) {
            return decodedResponse
        }
    } catch {
        // Handle api call error here.
        return nil
    }
    return nil
}


/* Continuously calls fetchDog() until a Dog is returned and returns that Dog. */
func fetchDoggy() async -> Dog {
    // Try to get a Dog
    var newDog = (await fetchDog()) ?? nil
    
    // Check if there is a Dog
    while (newDog == nil) {
        // Try again to get Dog
        newDog = (await fetchDog()) ?? nil
    }
    
    // Can force-unwrap because newDog is guaranteed a dog.
    return newDog!
}

