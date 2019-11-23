# dJsoN-lib
---------------------------------
 Created by Luigi Borriello on 20/11/2019.
 Copyright © 2019 Luigi Borriello. All rights reserved.
---------------------------

<br>City<br>
    Attributes:<br>
        -> name: String | it's the namne of the city<br>
        -> favourite: Bool | it indicate the state of the favourite. False means it's not favourite.<br>
        -> description: String | it's the infos about the city<br>
    Modules:<br>
        -> init(name, favourite, description) | return nothing<br>
           - it has several parameters:<br>
               - name: String<br>
               - favourite: Bool (optional, set on FALSE)<br>
               - description: String<br>
        -> addCity() | returns nothing<br>
           - It allows you to save the istance you are using.<br>
    
<br>Sport<br>
    Attributes:<br>
       -> name: String | it's the namne of the sport<br>
       -> favourite: Bool | it indicate the state of the favourite. False means it's not favourite.<br>
       -> cityName: String | it indicate the sport's own city.<br>
       -> description: String | it's the infos about the sport<br>
    Modules:
        -> init(name, favourite, city, description) | return nothing<br>
        - it has several parameters:<br>
            - name: String<br>
            - favourite: Bool (optional, set on FALSE)<br>
            - city: City instance; it is required for saving the name of the city.<br>
            - description: String<br>
        -> addSport() | returns nothing<br>
           - It allows you to save the istance you are using.<br>
    
getRandomSport() | returns an instace of Sport<br>
   -> random sport selector<br>

getRandomCity() | returns an instance of City<br>
   -> random city selector<br>

getSportsByCity(city) | return instace(s) of Sport containing that city name<br>
   -> city: City | it's an instance of City<br>

getSportsByCityName(cityName) | return array(s) of Sport containing that city name<br>
   -> cityName: String | it's just a name of a city.<br>
   if the city it's not found, it will return an empty array.<br><br>

getSportDescription(sportName) | return the description of a sport<br>
   -> sportName: String | it's the name of a sport.<br>
   If the sport is not found it will return ""<br>

getCityDescription(cityName) | return the description of a city<br>
   -> cityName: String | it's the name of a city.<br>
   If the city is not found it will return ""<br>

toggleSportFavourite(selected) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error<br>
   -> selected: Sport | it's an instance of Sport<br>

toggleCityFavourite(selected) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error<br>
   -> selected: City | it's an instance of City<br>

toggleCityFavouriteByName(cityName) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error<br>
   -> cityName: String | it's the name of a city<br>

toggleSportFavouriteByName(sportName, cityName) | return true if the favourite is = true or false if the favourite is = 0 or if there's an error<br>
    -> sportName: String | it's the name of a sport<br>
    -> cityName: String | it's the name of a city<br>

saveCities() | return nothing<br>
   -> It saves all the cities, removing all the old things to put the new things.<br>

saveSports() | return nothing<br>
   -> It saves all the sports, removing all the old things to put the new things.<br>

loadCities() | return nothing<br>
   -> It loads all the cities saved<br>

loadSports() | return nothing<br>
   -> It saves all the sports saved<br>
   
showCityImage(cityName, view) | return nothing, it will change a live UIImageView<br>
   -> cityName: String | the name of the city you want to show<br>
   -> view: UIImageView | a UIImageView you want to change<br>

showSportImage(sportName, view) | return nothing, it will change a live UIImageView<br>
   -> sportName: String | the name of the sport you want to show<br>
   -> view: UIImageView | a UIImageView you want to change<br>
   
   showSportFavourites() | return instance(s) of Sport<br>
   
   showCityFavourites() | return instance(s) of City<br>

---------------------------
