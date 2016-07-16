require 'faker'
#users
30.times do
	User.create(
    username: Faker::Internet.user_name,
	email: Faker::Internet.email,
	password_hash: '123')
end

#Cards + Guesses 
75.times do
	wrong_answer1 = Faker::Team.creature
	wrong_answer2 = Faker::Team.creature
	wrong_answer3 = Faker::Team.creature
	guesses = [wrong_answer1, wrong_answer2, wrong_answer3, "answer"].sample
	
	#Cards
	Card.create(
		question: Faker::Team.name,
		wrong_answer1: wrong_answer1,
		wrong_answer2: wrong_answer2,
		wrong_answer3: wrong_answer3,
		answer: 'answer',
		deck_id: rand(1..25))

	#Guesses
	Guess.create(
		card_id: rand(1..75),
		round_id: rand(1..10),
		user_id: rand(1..25),
		guess: guesses ) 
end

#Rounds
10.times do
	num = rand(7..11)
	Round.create(cards_played: num,
		first_guess: num - 2,
		user_id: rand(1..25),
		deck_id: rand(1..25))
end



#Decks
25.times do
	Deck.create(
		name: Faker::Team.creature,
		url: "https://robohash.org/#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}.#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}.#{rand(0..9)}#{rand(0..9)}.#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}.png")
end
