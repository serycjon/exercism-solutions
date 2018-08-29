module Bob (responseFor) where
import Data.Char

data SpeechType = Question | Yelling | YellingQuestion | Silence | Other

lettersFilter :: String -> String
lettersFilter = filter isAlpha

stripWhitespace :: String -> String
stripWhitespace = filter (not . isSpace)

inputType :: String -> SpeechType
inputType xs
  | isSilent = Silence
  | isAsking && isYelling = YellingQuestion
  | isYelling = Yelling
  | isAsking = Question
  | otherwise = Other
  where withoutSilence = stripWhitespace xs
        isSilent = null withoutSilence
        onlyLetters = lettersFilter xs
        isYelling = all isUpper onlyLetters && not (null onlyLetters)
        isAsking = last withoutSilence == '?'

responseFor :: String -> String
responseFor xs = case inputType xs of
  Question -> "Sure."
  Yelling -> "Whoa, chill out!"
  YellingQuestion -> "Calm down, I know what I'm doing!"
  Silence -> "Fine. Be that way!"
  Other -> "Whatever."
