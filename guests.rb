class Guest
  attr_reader :name,:favorite, :wallet
  def initialize(name,wallet,favorite_song)
    @name=name
    @wallet=wallet
    @favorite=favorite_song

  end

  def add_subtract_money(amount)
    @wallet+=amount
  end

  def favorite_song(playlist)
    for song in playlist
      if song.name == @favorite
        return "Woooo"
      end
    end
    return nil
  end


end
