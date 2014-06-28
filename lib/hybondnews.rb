require "hybondnews/version"
require "open-uri"
require "nokogiri"

module HYBondNews
  def self.t_rate 
    #ten_year_rate, fed reserve website 
    html = open("http://www.federalreserve.gov/releases/h15/current/").read
    doc = Nokogiri::HTML(open("http://www.federalreserve.gov/releases/h15/current/"))

    <<-TEXT
    The latest 10-year treasury rate is #{doc.search("td")[271].text}%
    TEXT

  end

  def self.bond_news
    # HY Bonds new, leveraged finance website
    html =open("http://www.leveragedfinancenews.com/section/high_yield_bonds.html").read
    doc2 = Nokogiri::HTML(open("http://www.leveragedfinancenews.com/section/high_yield_bonds.html"))

    <<-TEXT
    HY Bond News

    #{doc2.search("h4")[0].text}
    #{doc2.search("div#contentWrap p")[0].text}
    
    #{doc2.search("h4")[1].text}
    #{doc2.search("div#contentWrap p")[1].text}
    
    #{doc2.search("h4")[2].text}
    #{doc2.search("div#contentWrap p")[2].text}

    TEXT
  end 
end 
