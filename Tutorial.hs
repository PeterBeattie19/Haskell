import Data.List
import System.IO 

sumOfNums = sum[1..1000] 
modEx = mod 5 4

addition = 5 + 4
multiplication = 5 * 4
subtraction = 5 - 4
division = 10 / 2
   
num9 = 9 :: Int
sqrt9 = sqrt(fromIntegral num9) 

piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999
sin90 = sin 90 

trueAndFalse = True && False 
trueOrFalse = True || False 
notTrue = not(True) 

--LISTS--
primeNumbers = [3,5,7,11] 
morePrime = primeNumbers ++ [13,17,19,23,29] --Joining two lists 

favNums = 2 : 7 : 21  : 66 :[]

multiList = [[3,5,7],[11,13,17]] --List of lists
morePrimes2 = 2 : morePrime

lenPrimes = length morePrimes2 --Length of list

revPrime = reverse morePrimes2 --revere a list

isListEmpty = null morePrimes2 --check if list is empty 

secondPrime = morePrimes2 !! 1 --Retrieving the second entry in the list 

firstPrime = head morePrimes2 --Gets first value in the list 
lastPrime = last morePrimes2  --Gets last value in the list 

primeInit = init morePrimes2 --Returns everything but the last value in the list 

first3Primes = take 3 morePrimes2 --Return first 3 values in the list 
removedPrimes = drop 3 morePrimes2 --Return everything but the first 3 values in the list 

is7inList = 7 `elem` morePrimes2 --Check if 7 is in the list

maxPrime = maximum morePrimes2 --Return max element 
minPrime = minimum morePrimes2 --Return smallest elemnt

newList = [1,2,3,4,5]
sumOfList = sum newList --Adds up all entries in a list 
productOfList = product newList --Calculates the product of all elements in a list 

list = [0..10] --Creates a list with values 0,1,2,3,4,5,6,7,8,9,10

evenList = [2,4..20] --Generates a list of even numbers 

oddList = [1,3..20] --Generates list of odd numbers

tempList = [1,5..50] --Increments each value in the list by the difference of the first two values

letterList = ['A'..'Z']

infiniteList = [10,20..] --declares an infinite list but does not create, when ask for the 50th item in the list it will create the list up to  the 50th value

many2s = take 10 (repeat 2)  --Creates a list of 2s
many3s = replicate 10 3 --Same as above

cycleList = take 10 (cycle [1,2,3]) --Creates a list that reapeats the list given, over and over again

listTimes2 = [x * 2 | x <- [1..10]] --Multiplies every value in the list 1 t0 10 by 2 

listTimes3 = [x * 3 | x <- [1..50], x * 3 <= 50] --Create a list like above only mult. entries by three and only take 3 * x values less than 50

divisBy9and13 = [x | x <- [1..500], x `mod` 13 ==0, x `mod` 9 == 0] 

sortedList = sort [2,5,4,6,87,2,5,64,6]

sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10] --Adds crresponding entries together

listBiggerThan5 = filter (>5) morePrimes2

evensUpTo20 = takeWhile(<=20) [2,4..] --Uses an infinite list to take values from that infinite list.

multTable = [[x * y | x <- [1..12]] | y <- [1..12]]


--TUPLES--

person = ("Bob Smith", 34)
name = fst person
age = snd person

names = ["Bob","Mary","Tom"]
addresses = ["123 Main", "234 North", "567 South"]

namesAndAddress = zip names addresses

--FUNCTIONS--

addMe :: Int -> Int -> Int 

--funcName param1 param2 = operations (returned value) 

addMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2) 

whatAge :: Int -> String

whatAge 16 = "you can drive" 
whatAge 18 = "you can vote" 
whatAge 21 = "you can drink" 
whatAge _ = "Nothing important"

--RECURSION--

fibonacci :: Int -> Int 
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci(n-2)

factorial :: Int -> Int
factorial 1 = 1 
factorial n = n*factorial(n-1) 

otherFactorial n = product [1..n]

isOdd :: Int -> Bool 

isOdd n
    | n `mod` 2 == 0 = False --Even 
    | otherwise = True --Odd 

isEven n = n `mod` 2 == 0

whatSchool :: Int -> String

whatSchool age 
    | (age >= 5) && (age<=6) = "Junior Infants"
    | (age > 6) && (age<=10) = "Primary School"
    | (age >= 12) && (age<=18) = "Secondary School"
    | (age >= 19)  = "University"
