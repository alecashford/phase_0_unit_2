students = ["Adam Hardy", "Adrian Soghoian", "Ajay Bir Singh", "Alec Ashford", "Alex Mazur", "Alexis Ernst", "Amelia Downs", "Amol Borcar", "Andrew C. Koines, Jr.", "Andrew Principe", "Armen Vartan", "Austin Bourdier", "Ben Brostoff", "Brendan Susens-Jackson", "Brennon Williams", "Bridgette L. Salcido", "Britney Van Valkenburg", "Celeen Rusk", "Chad Everett Howard", "Christian Moon", "Colin Trent", "Dakota Cousineau", "Daniel Kim", "Danny Glover", "Gabriel Garrett", "Gregory Piccolo", "Gregory White", "Hing Huynh", "Ian Shuff", "Jake Wayne", "Jeff Kynaston", "Jennifer Oseitutu", "Jeuel Wilkerson", "John Thomas Mulvahill", "Joseph Rosztoczy", "Josh Jeong", "Katie Reiner", "Kendall Carey", "Kenneth Mendonca", "Kirstin Jarchow", "Kris Shanks", "Lienha Carleton", "Martin A. Lear", "Matias Andres Meneses", "Matthew Hein", "Matthew Kuzio", "Matthieu Gavaudan", "Michael Drew Teter", "Michael Ginalick", "Neel Shah", "Nick Giovacchini", "Osama Zayyad", "Phillip Crawford", "Phillip Smith", "RJ Arena", "Rj Bernaldo", "Ronald Ishak", "Ryan Stack", "Scott Jason", "Sherwood Callaway", "Siddharth Patel", "Simon Gondeck", "Spencer Olson", "Stella Kim", "Stuart Pearlman", "Timoor Kurdi", "Timothy Howard", "Valentine Sverdlov", "Vivek M George", "Yariv Kirschner", "Zach Pflederer", "Antonio Perez"]

#Randomizes order of students in main array
rando = students.sort_by { rand }

#splits randomized student array into 4 arrays of equal size
$g1 = rando[0...(rando.length/4)]
$g2 = rando[(rando.length/4)...(rando.length/2)]
$g3 = rando[(rando.length/2)...(rando.length - (rando.length/4))]
$g4 = rando[(rando.length - (rando.length/4))...rando.length]

#Prints to the console a list groups by their order in the array
def loopy(unitnum)
    for i in 0...$g1.length
    puts $g1[0]
    puts "Group #{(i + 1)} for unit #{unitnum}: #{$g1[i]}, #{$g2[i]}, #{$g3[i]}, #{$g4[i]}\n"
    end
end

#Method that pushes first element of one array and places it at end of next array (for later use)
def switchup
    $g2.push($g1[0])
    $g1.delete($g1[0])
    $g3.push($g2[0])
    $g2.delete($g2[0])
    $g4.push($g3[0])
    $g3.delete($g3[0])
    $g1.push($g4[0])
    $g4.delete($g4[0])
end


#Calls all functions
loopy(1)
switchup
loopy(2)
switchup
loopy(3)
