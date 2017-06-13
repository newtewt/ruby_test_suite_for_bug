Given(/^I am on the home page$/) do
  @current_page = page(ScrollList).await
  wait_for_none_animating
end


And(/^touch the third cell index$/) do
  @current_page.touch_by_index 3
end

Then(/^the detail view is displayed$/) do
  page(DetailView).await
end