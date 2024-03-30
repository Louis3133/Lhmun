require "application_system_test_case"

class ResumesecsTest < ApplicationSystemTestCase
  setup do
    @resumesec = resumesecs(:one)
  end

  test "visiting the index" do
    visit resumesecs_url
    assert_selector "h1", text: "Resumesecs"
  end

  test "should create resumesec" do
    visit resumesecs_url
    click_on "New resumesec"

    fill_in "Description", with: @resumesec.description
    fill_in "Image", with: @resumesec.image
    fill_in "Paragraphe1", with: @resumesec.paragraphe1
    fill_in "Paragraphe2", with: @resumesec.paragraphe2
    fill_in "Title", with: @resumesec.title
    click_on "Create Resumesec"

    assert_text "Resumesec was successfully created"
    click_on "Back"
  end

  test "should update Resumesec" do
    visit resumesec_url(@resumesec)
    click_on "Edit this resumesec", match: :first

    fill_in "Description", with: @resumesec.description
    fill_in "Image", with: @resumesec.image
    fill_in "Paragraphe1", with: @resumesec.paragraphe1
    fill_in "Paragraphe2", with: @resumesec.paragraphe2
    fill_in "Title", with: @resumesec.title
    click_on "Update Resumesec"

    assert_text "Resumesec was successfully updated"
    click_on "Back"
  end

  test "should destroy Resumesec" do
    visit resumesec_url(@resumesec)
    click_on "Destroy this resumesec", match: :first

    assert_text "Resumesec was successfully destroyed"
  end
end
