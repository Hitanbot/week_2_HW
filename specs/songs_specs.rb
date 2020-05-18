require('minitest/autorun')
require('minitest/reporters')
require_relative('../songs')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestSong < MiniTest::Test
  def setup()
    @song1=Song.new("Witchy Woman")

  end


  def test_song_name()
    assert_equal("Witchy Woman",@song1.name)


  end
end
