module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "B2B marketing, trade & sales leads | Trade leads India"
    if page_title.empty?
      base_title
    else
      page_title
    end
  end
end
