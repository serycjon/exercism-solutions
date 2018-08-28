module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
            deriving (Eq)

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / (earthYear * (planetRelativeOrbitalPeriod planet))
  where earthYear = 31557600

planetRelativeOrbitalPeriod :: Planet -> Float
planetRelativeOrbitalPeriod planet
  | planet == Mercury = 0.2408467
  | planet == Venus = 0.61519726
  | planet == Earth = 1
  | planet == Mars = 1.8808158
  | planet == Jupiter = 11.862615
  | planet == Saturn = 29.447498
  | planet == Uranus = 84.016846
  | planet == Neptune = 164.79132
