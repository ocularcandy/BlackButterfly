# app/screens/tattoos_screen.rb

class TattoosScreen < PM::TableScreen

  def table_data
    [{
      cells: tattoos.map do |tattoo|
        {
           title: tattoo,
           action: :select_tattoo,
           arguments: { tattoo: tattoo }
        }
      end # cells:
    }]
  end # table_data

  def select_tattoos(tattoo)
    # delegating the method to the parent screen
    # parent screen will be the main view
    self.parent_screen.select_tattoos(tattoo)
  end # select_tattoos

  def tattoos
    [
      "Small Color Tattoos",
      "Large Color Tattoos",
      "Small Black/Grey Tattoos",
      "Large Black/Grey Tattoos",
    ]
  end # tattoos

=begin
  **NOTE we would extract the description list into a model in a production app,
  of course, but this is a demo
=end

end # ServicesScreen
