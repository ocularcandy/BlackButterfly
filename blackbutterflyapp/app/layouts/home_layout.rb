class HomeLayout < MK::Layout
  view :tattoos_view

  def layout
    root :home do
      add UIImageView, :profile_image
     #  add UILabel,     :services
      add tattoos_view, :tattoos
    end
  end # layout

  def home_style
    background_color "#F9F9F9".uicolor # white
   #  background_color "#000000".uicolor # black
   #  background_color "#C0C0C0".uicolor # grey
  end # home_style

  def profile_image_style
    image "blackbutterfly".uiimage
    clips_to_bounds true

    layer do
      corner_radius 5.0 # cuts corners on square frame
    end # layer
    
    constraints do
      left   20
      top    84
      width  280
      height 280
    end # constraints

  end # profile_image_style

  # def services_style
  #   text "\"Quality For Life\""
  #   font UIFont.boldSystemFontOfSize(30)
  #   constraints do
  #     top 400
  #     left 42
  #     below(:profile_images).plus(20)
  #     height 30
  #   end # constraints
  # end # services_style

  def tattoos_style
    top 375
    left 0
    right "100%"
  end


end # class HomeLayout

=begin
  In this class, we’re defining the required layout method and assigning 
  our root view an identifier of :home. MotionKit will look for a method 
  called home_style which contains the styling for this element and applies 
  a background color property to it.

  You could just put the background_color in the root :main do block, but 
  this helps separate your styling from your structure/layout.
=end
