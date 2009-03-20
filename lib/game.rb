module Twittarr
  
  module Game
    GAMES = Dir.glob(File.join('game', '*.rb'))
    
    # Load all the game modules
    GAMES.each do |game|
      require game
    end
    
    def load_config
      
    end
    
  end
  
end