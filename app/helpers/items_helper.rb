module ItemsHelper

  def item_number(item)
    @asin = item["ASIN"]
  end

  def item_url(item)
    @url = item["DetailPageURL"]
  end

  def item_price(item)
    @price = item["ItemAttributes"]["ListPrice"]["Amount"].to_f/100
  end

  def item_size(item)
    @size = item["ItemAttributes"]["Size"]
  end

  def item_title(item)
    @title = item["ItemAttributes"]["Title"]
  end
end
