
require 'net/http'
require 'json'
require 'rubygems'
require 'yelp'

@consumer_key = 'PtgpJmRFHJZoeY5AHmUCOg'
@consumer_secret = 'T5bXNOO7IcAynAbHfks16bws1qM'
@token = 'zmgd80w7xG8bmT9L0n-2G-v7jvH5g2Ia'
@token_secret = 'Wnn2JYxF5d2ra_WmnIbxYJkDYz4'

def talk_to_yelp(location, type , limit=20)
  client = Yelp::Client.new({ consumer_key: 'PtgpJmRFHJZoeY5AHmUCOg',
                            consumer_secret: 'T5bXNOO7IcAynAbHfks16bws1qM',
                            token: 'zmgd80w7xG8bmT9L0n-2G-v7jvH5g2Ia',
                            token_secret: 'Wnn2JYxF5d2ra_WmnIbxYJkDYz4'
                          })

  params = {
    term: type.to_s,
    limit: 20
    }

  response = client.search(location.to_s, params)
  response.businesses
#   response.businesses.sample.name
end
