require 'test_helper'

class Admin::NgosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_ngo = admin_ngos(:one)
  end

  test "should get index" do
    get admin_ngos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_ngo_url
    assert_response :success
  end

  test "should create admin_ngo" do
    assert_difference('Admin::Ngo.count') do
      post admin_ngos_url, params: { admin_ngo: { address: @admin_ngo.address, children: @admin_ngo.children, name: @admin_ngo.name } }
    end

    assert_redirected_to admin_ngo_url(Admin::Ngo.last)
  end

  test "should show admin_ngo" do
    get admin_ngo_url(@admin_ngo)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_ngo_url(@admin_ngo)
    assert_response :success
  end

  test "should update admin_ngo" do
    patch admin_ngo_url(@admin_ngo), params: { admin_ngo: { address: @admin_ngo.address, children: @admin_ngo.children, name: @admin_ngo.name } }
    assert_redirected_to admin_ngo_url(@admin_ngo)
  end

  test "should destroy admin_ngo" do
    assert_difference('Admin::Ngo.count', -1) do
      delete admin_ngo_url(@admin_ngo)
    end

    assert_redirected_to admin_ngos_url
  end
end
