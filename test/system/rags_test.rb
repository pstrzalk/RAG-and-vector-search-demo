require "application_system_test_case"

class RagsTest < ApplicationSystemTestCase
  setup do
    @rag = rags(:one)
  end

  test "visiting the index" do
    visit rags_url
    assert_selector "h1", text: "Rags"
  end

  test "should create rag" do
    visit rags_url
    click_on "New rag"

    fill_in "Color", with: @rag.color
    fill_in "Description", with: @rag.description
    fill_in "Name", with: @rag.name
    fill_in "Rate", with: @rag.rate
    fill_in "Size", with: @rag.size
    click_on "Create Rag"

    assert_text "Rag was successfully created"
    click_on "Back"
  end

  test "should update Rag" do
    visit rag_url(@rag)
    click_on "Edit this rag", match: :first

    fill_in "Color", with: @rag.color
    fill_in "Description", with: @rag.description
    fill_in "Name", with: @rag.name
    fill_in "Rate", with: @rag.rate
    fill_in "Size", with: @rag.size
    click_on "Update Rag"

    assert_text "Rag was successfully updated"
    click_on "Back"
  end

  test "should destroy Rag" do
    visit rag_url(@rag)
    click_on "Destroy this rag", match: :first

    assert_text "Rag was successfully destroyed"
  end
end
