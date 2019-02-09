def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cards = 0
    2.times do
      card = deal_card
      cards = cards + card
    end
  display_card_total(cards)
  return cards
end

def hit?(cards)
  # code hit? here
  prompt_user
  call = get_user_input
  while call != "s"
      if call == "h" && call != "s"
        new_card = deal_card
        cards = cards + new_card
          if cards > 500
            end_game(cards)
          else
            display_card_total(cards)
            prompt_user
            call = get_user_input
          end
      elsif call != "h" && call != "s"
        invalid_command
        prompt_user
        call = get_user_input
      end
  end
  display_card_total(cards)
  return cards
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  cards = 0
  welcome
  initial_round
  hit?(cards)
    until cards > 21
      hit?(cards)
    end
  end_game(cards)
  end
