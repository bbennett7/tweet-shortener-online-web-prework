def dictionary 
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  short_tweet = []

  words.each do |word|
    case word.downcase
    when "hello"
      short_tweet << "hi"
    when "to", "two", "too"
      short_tweet << "2"
    when "for", "four" 
      short_tweet << "4"
    when "be" 
      short_tweet << "b"
    when "you" 
      short_tweet << "u"
    when "at" 
      short_tweet << "@" 
    when "and" 
      short_tweet << "&"
    else
      short_tweet << word
    end
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener (tweets_array)
  tweets_array.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    if tweet.length > 140
      tweets_array.collect do |item|
        puts word_substituter(item)
      end
    else
      tweets_array.collect do |item|
        puts item
      end
    end
  end
end

