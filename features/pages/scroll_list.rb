require 'calabash-cucumber/ibase'
class ScrollList < Calabash::IBase

  def trait
    "* text:'Master'"
  end

  def touch_by_index index
    touch "UITableViewCell index:#{index}"
  end
end