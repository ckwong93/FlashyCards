require 'faker'
#users
30.times do
	User.create(
    username: Faker::StarWars.character,
	 email: Faker::Internet.email,
	 password: '123')
end

#Cards
75.times do
	Card.create(
		question: Faker::Team.name,
		wrong_answer1: Faker::Company.buzzword,
		wrong_answer2: Faker::Company.buzzword,
		wrong_answer3:  Faker::Company.buzzword,
		answer: 'answer',
		deck_id: rand(1..25))
end

#Rounds
10.times do
	num = rand(7..11)
	Round.create(cards_played: num,
		first_guess: num - 2,
		user_id: rand(1..25),
		deck_id: rand(1..25))
end

#Guesses
10.times do
	Guess.create(
		card_id: rand(1..75),
		round_id: rand(1..10),
		user_id: rand(1..25))
end

#Decks
25.times do
	Deck.create(
		name: Faker::Team.creature,
		url: "https://robohash.org/#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}.#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}.#{rand(0..9)}#{rand(0..9)}.#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}.png")
end
