require('minitest/autorun')
require('minitest/reporters')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestRoom < MiniTest::Test
  def setup()
    @song1=Song.new("Witchy Woman")
    @song2=Song.new("A Hazy Shade of Winter")
    @song3=Song.new("I Will Survive")
    @guest1=Guest.new("Matthew",30,"Circle of life")
    @guest2=Guest.new("Stuart",30,"Witchy Woman")
    @songs=[@song1,@song2]
    @room = Room.new(@songs,5)

  end


  def test_add_guest()
    @room.add_guest(@guest1)
    assert_equal(1,@room.guests().length)


  end


  def test_remove_guest()
    @room.add_guest(@guest1)
    @room.remove_guest(@guest1)
    assert_equal(0,@room.guests().length)

  end


  def test_favorite_song_nil()
    @room.add_guest(@guest1)
    result=@room.favorite_song(@guest1)
    assert_equal(nil,result)


  end
  def test_favorite_song()
    @room.add_guest(@guest2)
    result=@room.favorite_song(@guest2)
    assert_equal("Woooo",result)


  end


  def test_add_song()
    @room.add_song(@song3)
    assert_equal(3,@room.songs.length)


  end
end
