module ApplicationHelper
  def flash_class(level)
    case level
      when "notice" then "alert alert-info"
      when "success" then "alert alert-success"
      when "error" then "alert alert-danger"
      when "alert" then "alert alert-warning"
    end
  end

  def display_date(date)
    date.strftime("%b %e %Y (%a)")
  end

  def display_flight_notice
    'Flights leaving within 24 hours are shown in 
      <span class="text-success">green colour</span>'.html_safe
  end
end

