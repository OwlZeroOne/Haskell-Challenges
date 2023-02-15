import Data.Char

-- Given an age in seconds, calculate how old someone would be on:

--      Mercury: orbital period 0.2408467 Earth years
--      Venus: orbital period 0.61519726 Earth years
--      Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
--      Mars: orbital period 1.8808158 Earth years
--      Jupiter: orbital period 11.862615 Earth years
--      Saturn: orbital period 29.447498 Earth years
--      Uranus: orbital period 84.016846 Earth years
--      Neptune: orbital period 164.79132 Earth years
--      Pluto: orbital period 247.94 Earth years

data Planet = Planet {
    planetName :: String,
    orbitPeriodInEarthYears :: Float
}deriving(Show)

mercury = Planet "Mercury" 0.24
venus = Planet "Venus" 0.62
earth = Planet "Earth" 1.0
mars = Planet "Mars" 1.88
jupiter = Planet "Jupiter" 11.86
saturn = Planet "Saturn" 29.45
uranus = Planet "Uranus" 84.02
neptune = Planet "Neptune" 164.79
pluto = Planet "Pluto" 247.94

earthYearSeconds = 31557600

secondsInAYearOn :: Planet  -> Float
secondsInAYearOn planet = earthYearSeconds * orbitPeriodInEarthYears planet

earthAgeToSeconds :: Float -> Float
earthAgeToSeconds age = age * 31557600

-- MAIN FUNCTION
ageOn :: Planet -> Float -> Float
ageOn thisPlanet seconds = seconds / secondsInAYearOn thisPlanet