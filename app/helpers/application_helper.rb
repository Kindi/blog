module ApplicationHelper
  
  def full_title(page_title)
    base_title = "Houssam Yassin"
    if page_title.empty?
      base_title
    else
      "#{page_title} || #{base_title}"
    end
  end
  
  # Adds HTML <p></p> tag to blog post
  def blogpost_to_list(blogpost)
    
    blog_list = blogpost.split "\n"

    blog_list
  end
  
  # Turns date into format "day month year" ex 22 July 2014
  def nice_date(date)
    date = date.to_s[0..9]
    months = { "01" => "January",
              "02" => "February",
              "03" => "March",
              "04" => "April",
              "05" => "May",
              "06" => "June",
              "07" => "July",
              "08" => "August",
              "09" => "September",
              "10" => "October",
              "11" => "November",
              "12" => "December"}

    formatted = []
    date_list = date.split "-"
    day = date_list[2]
    month = months[date_list[1]]
    year = date_list[0]

    formatted.push(day).push(month).push(year)
    formatted.join " "
  end
end
