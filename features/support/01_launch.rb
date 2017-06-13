# encoding: utf-8

require 'calabash-cucumber/launcher'

Before do
  @calabash_launcher = Calabash::Cucumber::Launcher.new
  @calabash_launcher.relaunch
end

After do
  unless @calabash_launcher.calabash_no_stop?
    calabash_exit
    @calabash_launcher.stop if @calabash_launcher.attached_to_automator?
  end
end

at_exit do
  # launcher = Calabash::Cucumber::Launcher.new
  # if launcher.simulator_target?
  #  launcher.simulator_launcher.stop unless launcher.calabash_no_stop?
  # end
end