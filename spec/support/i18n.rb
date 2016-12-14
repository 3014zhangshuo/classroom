RSpec.configure do |config|
  config.include ActionView::Helpers::TranslationHelper
end

scenario "invalid" do
    course_form.create "", ""

    expect(page).to have_text t("courses.new.add_course")
  end
