print "How many people per group do you want? "

x = gets.to_i

nashville_Class = ["Val", "Valeria", "Monet", "Della", "Fatima", "Maddie", "Jazzy", "Elizabeth", "Christina", "Alea", "Nicole", "Judy", "Sarah", "Jadyn"]

print nashville_Class.shuffle.each_slice(x).to_a


