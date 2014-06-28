# Hybondnews

A web-scraping gem that provides live news updates related to the High Yield Bond Markets.

## Installation

Add this line to your application's Gemfile:

    gem 'hybondnews'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hybondnews

## Usage

For the current 10-year treasury rate from the Federal Reserve:

    HYBondNews.t_rate

For the latest 3 articles from www.leveragedfinancenews.com:

    HYBondNews.bond_news 

## Contributing

1. Fork it ( https://github.com/[my-github-username]/hybondnews/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
