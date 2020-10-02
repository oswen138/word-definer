# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)


# #he spec reads:

# # visit the '/albums' route and click_on "Add a new album";
# # fill_in the album's name with "Yellow Submarine";
# # Finally, expect page to have the content "Yellow Submarine."

# describe('create an album path', {:type => :feature}) do
#   it('creates an album and then goes to the album page') do
#     visit('/albums')
#     save_and_open_page
#     click_on('Add a New Album')
#     fill_in('album_name', :with => 'Yellow Submarine')
#     click_on('Go!')
#     expect(page).to have_content('Yellow Submarine')
#   end
# end

# #a user can add a song

# describe('create a song path', {:type => :feature}) do
#   it('creates an album and then goes to the album page') do
#     album = Album.new("Yellow Submarine", nil)
#     album.save
#     visit("/albums/#{album.id}")
#     fill_in('song_name', :with => 'All You Need Is Love')
#     click_on('Add song')
#     expect(page).to have_content('All You Need Is Love')
#   end
# end

