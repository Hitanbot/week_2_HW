require('minitest/autorun')
require('minitest/reporters')
require_relative('../guests')
require_relative('../songs')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGuest < MiniTest::Test
  def setup()
    @song1=Song.new("Witchy Woman")
    @song2=Song.new("A Hazy Shade of Winter")
    @songs=[@song1,@song2]
    @guest1=Guest.new("Matthew",30,"Witchy Woman")

  end

  def test_add_subtract_money()
    @guest1.add_subtract_money(5)

    assert_equal(35,@guest1.wallet)

  end

  def test_favorite()
    result =@guest1.favorite_song(@songs)
    assert_equal("Woooo",result)



  end








end
