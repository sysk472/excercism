class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    get_values(:name).sort
  end

  def cheap
    get_records_by_condition(:price) { |element| element < 30 }
  end

  def out_of_stock
    get_records_by_condition(:quantity_by_size) { |element| element.empty? }
  end

  def stock_for_item(value)
    get_value(:name, value)[:quantity_by_size]
  end

  def total_stock
    total = 0
    get_values(:quantity_by_size).each do |row|
      total += row.values.inject(0, :+)
    end
    total
  end

  private
  attr_reader :items

  def get_values(key)
    @items.map { |element| element[key] }
  end

  def get_records_by_condition(key)
    @items.select { |element| yield(element[key]) }
  end

  def get_value(key, value)
    @items.find { |element| element[key] == value }
  end
end
