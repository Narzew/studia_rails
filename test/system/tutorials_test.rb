require "application_system_test_case"

class TutorialsTest < ApplicationSystemTestCase
  setup do
    @tutorial = tutorials(:one)
  end

  test "visiting the index" do
    visit tutorials_url
    assert_selector "h1", text: "Tutorials"
  end

  test "creating a Tutorial" do
    visit tutorials_url
    click_on "New Tutorial"

    fill_in "Author", with: @tutorial.author_id
    fill_in "Category", with: @tutorial.category_id
    check "Complete" if @tutorial.complete
    fill_in "Content", with: @tutorial.content
    fill_in "Description", with: @tutorial.description
    fill_in "Name", with: @tutorial.name
    fill_in "Type", with: @tutorial.type_id
    click_on "Create Tutorial"

    assert_text "Tutorial was successfully created"
    click_on "Back"
  end

  test "updating a Tutorial" do
    visit tutorials_url
    click_on "Edit", match: :first

    fill_in "Author", with: @tutorial.author_id
    fill_in "Category", with: @tutorial.category_id
    check "Complete" if @tutorial.complete
    fill_in "Content", with: @tutorial.content
    fill_in "Description", with: @tutorial.description
    fill_in "Name", with: @tutorial.name
    fill_in "Type", with: @tutorial.type_id
    click_on "Update Tutorial"

    assert_text "Tutorial was successfully updated"
    click_on "Back"
  end

  test "destroying a Tutorial" do
    visit tutorials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tutorial was successfully destroyed"
  end
end
