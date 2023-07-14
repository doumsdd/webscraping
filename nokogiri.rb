require 'nokogiri'
require 'open-uri'

# Fetch the webpage
url = 'https://example.com/blog'
html = URI.open(url)
doc = Nokogiri::HTML(html)

# Select and extract article titles and URLs
articles = doc.css('.article') # Assuming the articles have a common CSS class name

articles.each do |article|
  # Extract title
  title = article.css('.title').text

  # Extract URL
  url = article.css('a').attr('href').value

  # Print the title and URL
  puts "Title: #{title}"
  puts "URL: #{url}"
  puts "------"
end