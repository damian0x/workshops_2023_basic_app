class WeatherPresenter
  def initialize(data)
    @description = data['current']['condition']['text']
    @temperature = data['current']['temp_c']
    @icon = data['current']['condition']['icon']
  end

  def nice_weather?
    description == 'Sunny' || description == 'Partly cloudy'
  end

  def good_to_read_outside?
    nice_weather? && temperature > 15
  end

  def encourage_text
    if good_to_read_outside?
      "Get some snacks and go read a book in a park!"
    else
      "It's always a good weather to read a book!"
    end
  end

  attr_reader :description, :temperature, :icon
end
