# README

HTML parsing:
Pass an valid url and it will looking for specific tags and save it conent in a manageable format

### Models
#### page
  - page has url and its the response code (so you know that you are not getting a timeout page tags)
#### tag
  - page_id: page has mang tags
  - tag_type: tag have tag_type eg: a, h1, h2, div, p
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
Run the server and visit the following url
http://localhost:3000/doc
```
