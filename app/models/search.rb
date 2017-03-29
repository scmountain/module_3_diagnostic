class Search
  attr_reader :zip_code

  def initialize(params)
    byebug
    why only longitude?
    
  end

  def self.all(zip_code)
    zip_results = NrelService.data(zip_code)
    zip_results.map do |place|
      Search.new(place)
    end
  end
end
