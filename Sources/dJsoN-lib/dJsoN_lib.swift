
#if canImport(UIKit)

import UIKit
import Foundation

public class City : Codable
{
    public var name: String
    public var favourite: Bool
    public var description: String
    public var image: String
    
    public init(name: String, favourite: Bool = false, description: String, image: String = "")
    {
        self.name = name
        self.favourite = favourite
        self.description = description
        self.image = image
    }
    
    public func addCity()
    {
        Cities.append(self)
    }
}

public class Sport : Codable
{
    public var name: String
    public var favourite: Bool
    public var cityName: String
    public var description: String
    public var image: String
    
    public init(name: String, favourite: Bool = false, city: City, description: String, image: String = "")
    {
        cityName = city.name
        self.name = name
        self.favourite = favourite
        self.description = description
        self.image = image
    }
    
    public func addSport()
    {
        Sports.append(self)
    }
}

public var Sports: [Sport] = []
public var Cities: [City] = []

public func saveSports()
{
    let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    do
    {
        let e = JSONEncoder()
        e.outputFormatting = .prettyPrinted
        let data = try! e.encode(Sports)
        try data.write(to: URL(string: "\(documentDirectoryUrl)/sports.json")!, options: [])
        //print(String(data: data, encoding: .utf8)!)
    }
    catch
    {
        print(error)
    }
}

public func dataForJSONFileNamed(string: String) -> Data
{
    let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    let fileURL = currentDirectoryURL
        .appendingPathComponent("Tests", isDirectory: true)
        .appendingPathComponent(string)
        .appendingPathExtension("json")
    let jsonFileData = try! Data(contentsOf: fileURL)
    print(jsonFileData)
    return jsonFileData
}

public func loadSports()
{
    guard let documentsDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    else { return }
    
    let fileUrl = documentsDirectoryUrl.appendingPathComponent("sports.json")
    
    do
    {
        let data = try Data(contentsOf: fileUrl, options: [])
        Sports = try JSONDecoder().decode(Array<Sport>.self, from: data)
    }
    catch
    {
        print(error)
    }
}

public func saveCities()
{
    let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    print("URL: \(documentDirectoryUrl)")
    
    do
    {
        let e = JSONEncoder()
        e.outputFormatting = .prettyPrinted
        let data = try! e.encode(Cities)
        try data.write(to: URL(string: "\(documentDirectoryUrl)/cities.json")!, options: [])
        //print(String(data: data, encoding: .utf8)!)
    }
    catch
    {
        print(error)
    }
}

public func loadCities()
{
    guard let documentsDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    else { return }
    
    let fileUrl = documentsDirectoryUrl.appendingPathComponent("cities.json")
    
    do
    {
        let data = try Data(contentsOf: fileUrl, options: [])
        Cities = try JSONDecoder().decode(Array<City>.self, from: data)
    }
    catch
    {
        print(error)
    }
}

public func getRandomSport() -> Sport
{
    return Sports.randomElement()!
}

public func getRandomCity() -> City
{
    return Cities.randomElement()!
}

public func getCityByName(cityName: String) -> [City]
{
    var array: [City] = []
    
    for city in Cities
    {
        if(city.name == cityName)
        {
            array.append(city)
        }
    }
    
    return array
}

public func getSportsByCity(city: City) -> [Sport]
{
    var array: [Sport] = []
    
    for sport in Sports
    {
        if(sport.cityName == city.name)
        {
            array.append(sport)
        }
    }
    
    return array
}

public func getSportsByCityName(cityName: String) -> [Sport]
{
    var array: [Sport] = []
    
    for sport in Sports
    {
        if(sport.cityName == cityName)
        {
            array.append(sport)
        }
    }
    
    return array
}

public func getSportDescription(sportName: String) -> String
{
    var des: String = ""
    
    for sport in Sports
    {
        if(sport.name == sportName)
        {
            des = sport.description
            break
        }
    }
    
    return des
}

public func getCityDescription(cityName: String) -> String
{
    var des: String = ""
    
    for city in Cities
    {
        if(city.name == cityName)
        {
            des = city.description
            break
        }
    }
    
    return des
}

public func toggleSportFavourite(selected: Sport) -> Bool
{
    for sport in Sports
    {
        if(sport.cityName == selected.cityName && sport.name == selected.name)
        {
            sport.favourite.toggle()
            return sport.favourite
        }
    }
    
    return false
}

public func toggleCityFavourite(selected: City) -> Bool
{
    for city in Cities
    {
        if(city.name == selected.name)
        {
            city.favourite.toggle()
            return city.favourite
        }
    }
    
    return false
}

public func toggleSportFavouriteByName(sportName: String, cityName: String) -> Bool
{
    for sport in Sports
    {
        if(sport.cityName == cityName && sport.name == sportName)
        {
            sport.favourite.toggle()
            return sport.favourite
        }
    }
    
    return false
}

public func toggleCityFavouriteByName(cityName: String) -> Bool
{
    for city in Cities
    {
        if(city.name == cityName)
        {
            city.favourite.toggle()
            return city.favourite
        }
    }
    
    return false
}

extension String
{
    func base64ToImage() -> UIImage?
    {
        if let url = URL(string: self), let data = try? Data(contentsOf: url), let image = UIImage(data: data)
        {
            return image
        }

        return nil

    }
}

public func showCityImage(cityName: String, view: UIImageView)
{
    for city in Cities
    {
        if(city.name == cityName)
        {
            view.image = city.image.base64ToImage()
        }
    }
}

public func showSportImage(sportName: String, view: UIImageView)
{
    for sport in Sports
    {
        if(sport.name == sportName)
        {
            view.image = sport.image.base64ToImage()
            break
        }
    }
}

public func getSportFavourites() -> [Sport]
{
    var array: [Sport] = []
    
    for sport in Sports
    {
        if(sport.favourite == true)
        {
            array.append(sport)
        }
    }
    
    return array
}

public func getCityFavourites() -> [City]
{
    var array: [City] = []
    
    for city in Cities
    {
        if(city.favourite == true)
        {
            array.append(city)
        }
    }
    
    return array
}

#endif
