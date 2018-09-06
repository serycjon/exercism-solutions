module School (School, add, empty, grade, sorted) where

import Data.List (sort)
import qualified Data.Map as Map

data School = School {schoolMap :: (Map.Map Int [String])}

add :: Int -> String -> School -> School
add gradeNum student school =
  let oldMap = schoolMap school
      oldStudents = Map.findWithDefault [] gradeNum oldMap
      newStudents = sort $ student : oldStudents
      newMap = Map.insert gradeNum newStudents oldMap
  in School newMap

empty :: School
empty = School Map.empty

grade :: Int -> School -> [String]
grade gradeNum school = Map.findWithDefault [] gradeNum $ schoolMap school

sorted :: School -> [(Int, [String])]
sorted school = Map.toList $ schoolMap school
