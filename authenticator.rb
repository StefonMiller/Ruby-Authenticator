# This program prompts for a username/password,
# if the credentials match a given user, then we display
# the full user record. The user has 3 tries to enter
# valid login credentials before the program exits

users = [
    {username: "Stefon", password: "cats33"},
    {username: "Emily", password: "bean"},
    {username: "Barb", password: "smoke"},
    {username: "Mike", password: "beer"}
]

# Print welcome screen
puts "Welcome to my authenticator"
25.times {print"-"}
puts


tries = 0

while tries <+ 3
    # Increment tries on every iteration
    tries += 1

    puts "Please enter your username"
    user_name = gets.chomp
    puts "Please enter your password"
    pw = gets.chomp
    valid_user = nil
    users.each do |user|
        if user[:username] == user_name && user[:password] == pw
            valid_user = user
        end
    end
    if valid_user.nil?
        puts "Invalid credentials"
    else
        puts valid_user
        break
    end
    break if tries == 3
    puts "Press q to quit. Press any other key to try again:"
    continue = gets.chomp
    break if continue == "q" 
end

puts "Thank you for using my program"