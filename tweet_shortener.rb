def dictionary
  words = {
    'hello': 'hi',
    'to': '2',
    'two': '2',
    'too': '2',
    'for': '4',
    'four': '4',
    'be': 'b',
    'you': 'u',
    'at': '@',
    'and': '&'
  }
  return words
end

def word_substituter(string)
  terms = dictionary
  tweet = string.split()
  short_tweet = []
    tweet.each do|element|
      if terms.to_s.include?(element.downcase) && element.length > 1
        terms.each do |key, value|
          if element.downcase == key.to_s
            element = value
            short_tweet << element
          end
        end
      else
        short_tweet << element
      end
    end
  return short_tweet.join(" ")
end

def bulk_tweet_shortener(array) 
  array.each do |element|
    puts word_substituter(element)
  end
end

def selective_tweet_shortener(string)
  terms = dictionary
  tweet = string.split()
  short_tweet = []
    tweet.each do|element|
      if terms.to_s.include?(element.downcase) && element.length > 1 && string.length > 140
        terms.each do |key, value|
          if element.downcase == key.to_s
            element = value
            short_tweet << element
          end
        end
      else
        short_tweet << element
      end
    end
  return short_tweet.join(" ")
end

def shortened_tweet_truncator(string)
  terms = dictionary
  tweet = string.split()
  short_tweet = []
    tweet.each do|element|
      if terms.to_s.include?(element.downcase) && element.length > 1 && string.length > 140
        terms.each do |key, value|
          if element.downcase == key.to_s
            element = value
            short_tweet << element
          end
        end
      else
        short_tweet << element
      end
    end
    return_tweet = short_tweet.join(" ")
  until return_tweet.length == 137
    return_tweet.chop!
  end
    return_tweet.insert(137, '...')
  return_tweet
end
