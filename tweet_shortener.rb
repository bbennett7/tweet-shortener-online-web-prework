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
  tweets_array.each do |tweet|
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
      short_tweet.join(" ")
      puts short_tweet
    end
  end
 end
end

