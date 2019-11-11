require "application_system_test_case"

class CopyrightsTest < ApplicationSystemTestCase
  setup do
    @copyright = copyrights(:one)
  end

  test "visiting the index" do
    visit copyrights_url
    assert_selector "h1", text: "Copyrights"
  end

  test "creating a Copyright" do
    visit copyrights_url
    click_on "New Copyright"

    fill_in "Applicant name", with: @copyright.applicant_name
    fill_in "Date", with: @copyright.date
    fill_in "Ref number", with: @copyright.ref_number
    fill_in "Work", with: @copyright.work
    click_on "Create Copyright"

    assert_text "Copyright was successfully created"
    click_on "Back"
  end

  test "updating a Copyright" do
    visit copyrights_url
    click_on "Edit", match: :first

    fill_in "Applicant name", with: @copyright.applicant_name
    fill_in "Date", with: @copyright.date
    fill_in "Ref number", with: @copyright.ref_number
    fill_in "Work", with: @copyright.work
    click_on "Update Copyright"

    assert_text "Copyright was successfully updated"
    click_on "Back"
  end

  test "destroying a Copyright" do
    visit copyrights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Copyright was successfully destroyed"
  end
end
