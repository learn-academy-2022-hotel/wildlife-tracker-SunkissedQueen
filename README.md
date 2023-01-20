## Rails API and Postman - 1/19/23 Hotel

### Adding rails app to empty github repo
rails new songs-api -d postgresql -T
 9451  cd songs-api
 9452  rails db:create
 9453  git remote add origin https://github.com/learn-academy-2022-hotel/wildlife-tracker-SunkissedQueen.git
 9454  clear
 9455  git branch
 9456  git status
 9457  git checkout -b main
 9458  git add .
 9459  git commit -m "initial commit"
 9460  git push origin main

- API: delivers data in a json, allows different programs to connect

- Restful routes that deal solely with data: create, update, index, destroy, show. These are also known as rails endpoints. 


If you should need to destroy a method/controller, there is a rails destroy command
 - $ rails d resource Song title:string artist:string
Remember to drop and recreate the database
rails db:drop
 9482  rails db:create

Add rspec dependencies and files
$ bundle add rspec-rails
$ rails generate rspec:install

Start the server
$ rails s

- Create a song tracker. 
 - model for the songs
 - controller 
 - $ rails g resource Song title:string artist:string

  - generating a resource creates a model and controller for Song
  - by adding rspec dependencies and files before the resource, it will automatically create test files for the model (spec/models/song_spec.rb) and the controller (spec/requests/songs_spec.rb)

- Update the schema
$ rails db:migrate

- Make data entry
  - $ rails console
  to see all entries in the database
  > Song.all
  to make entries in the database
  > Song.create(title:'Free Mind', artist:'Tems')
  > Song.create(title:'Up the Wolves', artist:'The Mountain Goats')
  > Song.create(title:'Til I Met Thee', artist:'Cody Chestnut')
  > Song.create(title:'Everyone Wants to Rule the World', artist:'Tears for Fears')

- push changes to github and deleted the stale branches remotely and locally

- checkout a new branch: resftul-routes

### Process
- modify the controller method
- verify that it works in postman

- Postman - data visualization tool, make a request and show a response

<!-- INDEX -->
- apps/controller
```ruby
  def index
    songs = Song.all
    render json: songs
  end
```
- Postman
 - http verb, path, click send
 - Output: array of objects containing our data entries

