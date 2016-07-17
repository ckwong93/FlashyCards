post '/decks/:id/guesses' do
  count = 0
  params[:deck].each do |deck|
    	if deck[1] == "answer"
  		count += 1
  	else
  	end
  end
  Round.create(cards_played: params[:deck].length, deck_id: params[:id], first_guess: count, user_id: current_user.id)

  redirect "/users/#{current_user.id}"
end