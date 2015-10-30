module ItemsHelper

  def item_number(item)
    if item["ASIN"]
     @asin = item["ASIN"]
    else
      @asin = "Unavailable"
    end
  end

  def item_url(item)
    if item["DetailPageURL"]
      @url = item["DetailPageURL"]
    else
      @url = "Unavailable"
    end
  end

  def item_price(item)
    if  item["ItemAttributes"]["ListPrice"]
      @price = (item["ItemAttributes"]["ListPrice"]["Amount"].to_f/100).round(2)
    else
      @price = "Unavailable"
    end
  end

  def item_size(item)
    if item["ItemAttributes"]["Size"]
      @size = item["ItemAttributes"]["Size"]
    else
      @size = "Unavailable"
    end
  end

  def item_title(item)
    @title = item["ItemAttributes"]["Title"]
  end
end
