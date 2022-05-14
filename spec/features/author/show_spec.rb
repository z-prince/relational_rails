require 'rails_helper'

RSpec.describe 'The song show page' do
  # As a user,
  # when I visit '/songs/1'
  # I see each song's title and artist
  # And I do not see any other songs in my database
  it 'displays the song title' do
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: 'I Really Like You', length: 208, play_count: 123)
    song2 = artist.songs.create!(title: 'Call Me Maybe', length: 408, play_count: 23)
    visit "/songs/#{song.id}"
    # localhost:3000/songs/1

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song2.title)
  end

  it 'displays the name of the artist for the song' do
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: 'I Really Like You', length: 208, play_count: 123)
    song2 = artist.songs.create!(title: 'Call Me Maybe', length: 408, play_count: 23)
    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end
end
