class Room
  attr_reader :songs, :guests
  def initialize(songs,capacity)
    @songs=songs
    @capacity=capacity
    @guests=[]
  end

  def add_guest(guest)
    if @guests.length <= @capacity
      guest.add_subtract_money(-5)
      @guests.push(guest)

    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def favorite_song(guest)
    return guest.favorite_song(@songs)

  end

  def add_song(song)
    @songs.push(song)
  end





end
