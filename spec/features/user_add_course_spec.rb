require "rails_helper"
describe "user create course", :type => :featrue do
  scenario "valid" do
    course = build_stubbed(:course)
    course_form.create(course.title, course.description)
    expect(page).to have_text(course.title)
  end

  scenario "invalid" do
    course_form.create "", ""
    expect(page).to have_text("Add a course")
  end

  private

  def course_form
    sign_in
    home_page.go
    home_page.add_course
  end

  def home_page
    PageObjects::Pages::Home.new
  end

  def sign_in(email,password)
  fill_form :user, email: email, password: password
  click_button "Log in"
  end

end
