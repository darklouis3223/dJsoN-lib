# dJsoN-lib
---------------------------------
 Created by Luigi Borriello on 20/11/2019.
 Copyright © 2019 Luigi Borriello. All rights reserved.
---------------------------

City
    Attributes:
        -> name: String | it's the namne of the city
        -> favourite: Bool | it indicate the state of the favourite. False means it's not favourite.
        -> description: String | it's the infos about the city
    Modules:
        -> init(name, favourite, description) | return nothing
           - it has several parameters:
               - name: String
               - favourite: Bool (optional, set on FALSE)
               - description: String
        -> addCity() | returns nothing
           - It allows you to save the istance you are using.
    
Sport
    Attributes:
       -> name: String | it's the namne of the sport
       -> favourite: Bool | it indicate the state of the favourite. False means it's not favourite.
       -> cityName: String | it indicate the sport's own city.
       -> description: String | it's the infos about the sport
    Modules:
        -> init(name, favourite, city, description) | return nothing
        - it has several parameters:
            - name: String
            - favourite: Bool (optional, set on FALSE)
            - city: City instance; it is required for saving the name of the city.
            - description: String
        -> addSport() | returns nothing
           - It allows you to save the istance you are using.
    
getRandomSport() | returns an array of Sport
   -> random sport selector

getRandomCity() | returns an array of City
   -> random city selector

getSportsByCity(city) | return array(s) of Sport containing that city name
   -> city: City | it's an instance of City

getSportsByCityName(cityName) | return array(s) of Sport containing that city name
   -> cityName: String | it's just a name of a city.
   if the city it's not found, it will return an empty array.

getSportDescription(sportName) | return the description of a sport
   -> sportName: String | it's the name of a sport.
   If the sport is not found it will return ""

getCityDescription(cityName) | return the description of a city
   -> cityName: String | it's the name of a city.
   If the city is not found it will return ""

toggleSportFavourite(selected) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error
   -> selected: Sport | it's an instance of Sport

toggleCityFavourite(selected) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error
   -> selected: City | it's an instance of City

toggleCityFavouriteByName(cityName) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error
   -> cityName: String | it's the name of a city

toggleSportFavouriteByName(sportName, cityName) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error
    -> sportName: String | it's the name of a sport
    -> cityName: String | it's the name of a city

saveCities() | return nothing
   -> It saves all the cities, removing all the old things to put the new things.

saveSports() | return nothing
   -> It saves all the sports, removing all the old things to put the new things.

loadCities() | return nothing
   -> It loads all the cities saved

loadSports() | return nothing
   -> It saves all the sports saved

onUserRegister() | return nothing
   -> It will create the json files. Use only on register, the first time.

---------------------------
