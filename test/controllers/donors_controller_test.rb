require 'test_helper'

class DonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donor = donors(:one)
  end

  test "should get index" do
    get donors_url
    assert_response :success
  end

  test "should get new" do
    get new_donor_url
    assert_response :success
  end

  test "should create donor" do
    assert_difference('Donor.count') do
      post donors_url, params: { donor: { child_code: @donor.child_code, donar_paid: @donor.donar_paid, donor_code: @donor.donor_code, last_paid: @donor.last_paid, month: @donor.month, name: @donor.name, reference: @donor.reference, send_by: @donor.send_by } }
    end

    assert_redirected_to donor_url(Donor.last)
  end

  test "should show donor" do
    get donor_url(@donor)
    assert_response :success
  end

  test "should get edit" do
    get edit_donor_url(@donor)
    assert_response :success
  end

  test "should update donor" do
    patch donor_url(@donor), params: { donor: { child_code: @donor.child_code, donar_paid: @donor.donar_paid, donor_code: @donor.donor_code, last_paid: @donor.last_paid, month: @donor.month, name: @donor.name, reference: @donor.reference, send_by: @donor.send_by } }
    assert_redirected_to donor_url(@donor)
  end

  test "should destroy donor" do
    assert_difference('Donor.count', -1) do
      delete donor_url(@donor)
    end

    assert_redirected_to donors_url
  end
end
