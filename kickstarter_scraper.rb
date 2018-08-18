# require libraries/modules here
require "nokogiri"
require "pry"
def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  project={}

  page_section = kickstarter.css("li.project.grid_4")
  page_section.each do |project|
    
  end
  binding.pry
end

create_project_hash
projects: 
title: kickstarter.css(".project .bbcard_name a").text
image_link: kickstarter.css(".project-thumbnail a img").attribute("src").value
description: kickstarter.css("p.bbcard_blurb").text
location: kickstarter.css(".project-meta .location-name").text
percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
