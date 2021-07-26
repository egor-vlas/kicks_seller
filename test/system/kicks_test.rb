require "application_system_test_case"

class KicksTest < ApplicationSystemTestCase
  setup do
    @kick = kicks(:one)
  end

  test "visiting the index" do
    visit kicks_url
    assert_selector "h1", text: "Kicks"
  end

  test "creating a Kick" do
    visit kicks_url
    click_on "New Kick"

    fill_in "Brand", with: @kick.brand
    fill_in "Buyer", with: @kick.buyer_id
    fill_in "Condition", with: @kick.condition
    fill_in "Description", with: @kick.description
    fill_in "Picture", with: @kick.picture
    fill_in "Price", with: @kick.price
    fill_in "Profile", with: @kick.profile_id
    fill_in "Seller", with: @kick.seller_id
    fill_in "Tittle", with: @kick.tittle
    click_on "Create Kick"

    assert_text "Kick was successfully created"
    click_on "Back"
  end

  test "updating a Kick" do
    visit kicks_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @kick.brand
    fill_in "Buyer", with: @kick.buyer_id
    fill_in "Condition", with: @kick.condition
    fill_in "Description", with: @kick.description
    fill_in "Picture", with: @kick.picture
    fill_in "Price", with: @kick.price
    fill_in "Profile", with: @kick.profile_id
    fill_in "Seller", with: @kick.seller_id
    fill_in "Tittle", with: @kick.tittle
    click_on "Update Kick"

    assert_text "Kick was successfully updated"
    click_on "Back"
  end

  test "destroying a Kick" do
    visit kicks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kick was successfully destroyed"
  end
end
