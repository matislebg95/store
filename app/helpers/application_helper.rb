module ApplicationHelper
  def price_in_euros(price_in_cents)
    "%.2f €" % (price_in_cents.to_f / 100)
  end

end
