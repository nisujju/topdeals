module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    # base_title = "B2B trade leads India, Buying leads, B2B Sales & Marketing"
    # base_title = "B2B Marketing, Buying leads, B2B Sales, B2B Trade Leads India"
    base_title =  "B2B Marketing, Buy leads, B2B Sales, B2B Trade Leads India, B2B Leads"
    if page_title.empty?
      base_title
    else
      page_title
    end
  end
end
