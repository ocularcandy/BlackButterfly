class HomeScreen < PM::Screen
  title "Black Butterfly Tattoo"

  def on_load
    @layout = HomeLayout.new(root: self.view)
    @layout.tattoos_view = tattoos_screen.view
    @layout.build
  end

  def tattoos_screen
    @tattoos_screen ||= begin
      s = TattoosScreen.new
      self.addChildViewController s
      s.parent_screen = self # automagically a weak reference
      s
    end
  end # tattoos_screen

  def select_tattoo(tattoo)
    PM.logger.info tattoo
  end # select_tattoo
end

=begin 
  First, we instantiate the layout we made and pass in the root view,
  which of course is our main UIView, self.view. We do this in the on_load 
  method which is a ProMotion method, called on loadView in the UIViewController
  lifecycle. Then we call .build which applies the layout and returns the layout
  instance to @layout.
=end

### ORIG ##
# class HomeScreen < PM::Screen
#   title "Home"
#
#   def on_load
#     # After view is first loaded
#     set_nav_bar_button :right, title: "Help", action: :show_help
#   end
#
#   def show_help
#     open HelpScreen
#   end
#
# end
