class ApplicationController < ActionController::Base

  def get_cards
    cards = {}
    type_of_cards = ['Club ', 'Diamond ', 'Spade ', 'Heart ']
    c = ''
    count = 1
    (1..52).each do |num|
      if((num-1) %13 == 0)
        c= type_of_cards[num/13];
        count = 1 
      end
      cards[num] = c + count.to_s
      count += 1
    end
    return cards
  end
end
