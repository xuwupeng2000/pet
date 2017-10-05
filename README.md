# README

HTML parsing:
Pass an valid url and it will looking for specific tags and save it conent in a manageable format

### Models
page
  - page has url and its the response code (so you know that you are not getting a timeout page tags)
tag
  - page_id: page has mang tags
  - tag_type: tag have tag_type eg: <a></a> <h1></h1> <h2></h2>
  - tag_conent: what inside of tag

### How to get it going
```
rake db:create
rake db:migrate
bundle exec rails s
```

### Run the test
```
bundle exec rspec spec
```

### APIs
```

# Get the full list of page with its tags
GET  /api/v1/pages
# Give a url and create a page object with its tags (h1 h2 h3 a)
POST /api/v1/pages
```
