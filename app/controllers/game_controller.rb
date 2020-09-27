class GameController < ApplicationController

  def start_game
    @all_cards = get_cards
    @player_a_cards = []
    @player_b_cards = []
    if params[:commit].present?
      alot_cards
    end
  end

  def start_game_with_computer
  end

  # get random cards in range of lim1 and lim2 in the slot of 13
  def shuffle_cards lim1, lim2
    (lim1..lim2).to_a.sort{ rand() - 0.5 }[0..13]
  end

  def alot_cards
    player_chance = 1
    (1..4).each do |num|
      lim1 = player_chance
      lim2 = lim1+12
      shuffle_set = shuffle_cards(lim1, lim2)
      shuffle_set.each do |picked_number|
        if player_chance%2 == 1
          @player_a_cards << picked_number
        else
          @player_b_cards << picked_number
        end
        player_chance += 1
      end
    end
    @player_a_cards.sort!
    @player_b_cards.sort!
  end

end