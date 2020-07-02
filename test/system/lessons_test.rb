require "application_system_test_case"

class LessonsTest < ApplicationSystemTestCase
  setup do
    @lesson = lessons(:one)
  end

  test "visiting the index" do
    visit lessons_url
    assert_selector "h1", text: "Lessons"
  end

  test "creating a Lesson" do
    visit lessons_url
    click_on "New Lesson"

    check "Friday" if @lesson.friday
    check "Monday" if @lesson.monday
    fill_in "Name", with: @lesson.name
    check "Saturday" if @lesson.saturday
    check "Sunday" if @lesson.sunday
    check "Thursday" if @lesson.thursday
    check "Tuesday" if @lesson.tuesday
    check "Wednesday" if @lesson.wednesday
    click_on "Create Lesson"

    assert_text "Lesson was successfully created"
    click_on "Back"
  end

  test "updating a Lesson" do
    visit lessons_url
    click_on "Edit", match: :first

    check "Friday" if @lesson.friday
    check "Monday" if @lesson.monday
    fill_in "Name", with: @lesson.name
    check "Saturday" if @lesson.saturday
    check "Sunday" if @lesson.sunday
    check "Thursday" if @lesson.thursday
    check "Tuesday" if @lesson.tuesday
    check "Wednesday" if @lesson.wednesday
    click_on "Update Lesson"

    assert_text "Lesson was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson" do
    visit lessons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson was successfully destroyed"
  end
end
