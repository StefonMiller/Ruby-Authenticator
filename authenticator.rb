# This program prompts for a username/password,
# if the credentials match a given user, then we display
# the full user record. The user has 3 tries to enter
# valid login credentials before the program exits

# Predefined users
users = [
    {username: "Stefon", password: "cats33"},
    {username: "Emily", password: "bean"},
    {username: "Barb", password: "smoke"},
    {username: "Mike", password: "beer"}
]

# Method to validate users, returns Nil if no valid user found
def validate_credentials(un, pw, users)
    valid_user = nil
    # Validate information
    users.each do |user|
        if user[:username] == un && user[:password] == pw
            valid_user = user
        end
    end
    valid_user
end

# Print welcome screen
puts "Welcome to my authenticator"
25.times {print"-"}
puts


tries = 0
# Loop until tries exceeded
while true
    # Increment tries on every iteration
    tries += 1

    # Prompt for info
    puts "Please enter your username"
    user_name = gets.chomp
    puts "Please enter your password"
    pw = gets.chomp
    user = validate_credentials(user_name, pw, users)
    # Check if validation retrieved valid user
    if user.nil?
        puts "Invalid credentials"
    else
        puts user
        break
    end
    # Exit if over tries or if user elects to
    break if tries == 3
    puts "Press q to quit. Press any other key to try again:"
    continue = gets.chomp
    break if continue == "q" 
end

puts "Thank you for using my program"