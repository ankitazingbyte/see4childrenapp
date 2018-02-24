require 'test_helper'

class CertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certificate = certificates(:one)
  end

  test "should get index" do
    get certificates_url
    assert_response :success
  end

  test "should get new" do
    get new_certificate_url
    assert_response :success
  end

  test "should create certificate" do
    assert_difference('Certificate.count') do
      post certificates_url, params: { certificate: { donar_name: @certificate.donar_name, donation_amount: @certificate.donation_amount, issue_date: @certificate.issue_date, month: @certificate.month, sponsored_child_code: @certificate.sponsored_child_code, sponsored_child_name: @certificate.sponsored_child_name } }
    end

    assert_redirected_to certificate_url(Certificate.last)
  end

  test "should show certificate" do
    get certificate_url(@certificate)
    assert_response :success
  end

  test "should get edit" do
    get edit_certificate_url(@certificate)
    assert_response :success
  end

  test "should update certificate" do
    patch certificate_url(@certificate), params: { certificate: { donar_name: @certificate.donar_name, donation_amount: @certificate.donation_amount, issue_date: @certificate.issue_date, month: @certificate.month, sponsored_child_code: @certificate.sponsored_child_code, sponsored_child_name: @certificate.sponsored_child_name } }
    assert_redirected_to certificate_url(@certificate)
  end

  test "should destroy certificate" do
    assert_difference('Certificate.count', -1) do
      delete certificate_url(@certificate)
    end

    assert_redirected_to certificates_url
  end
end
