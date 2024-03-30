require "test_helper"

class ResumesecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resumesec = resumesecs(:one)
  end

  test "should get index" do
    get resumesecs_url
    assert_response :success
  end

  test "should get new" do
    get new_resumesec_url
    assert_response :success
  end

  test "should create resumesec" do
    assert_difference("Resumesec.count") do
      post resumesecs_url, params: { resumesec: { description: @resumesec.description, image: @resumesec.image, paragraphe1: @resumesec.paragraphe1, paragraphe2: @resumesec.paragraphe2, title: @resumesec.title } }
    end

    assert_redirected_to resumesec_url(Resumesec.last)
  end

  test "should show resumesec" do
    get resumesec_url(@resumesec)
    assert_response :success
  end

  test "should get edit" do
    get edit_resumesec_url(@resumesec)
    assert_response :success
  end

  test "should update resumesec" do
    patch resumesec_url(@resumesec), params: { resumesec: { description: @resumesec.description, image: @resumesec.image, paragraphe1: @resumesec.paragraphe1, paragraphe2: @resumesec.paragraphe2, title: @resumesec.title } }
    assert_redirected_to resumesec_url(@resumesec)
  end

  test "should destroy resumesec" do
    assert_difference("Resumesec.count", -1) do
      delete resumesec_url(@resumesec)
    end

    assert_redirected_to resumesecs_url
  end
end
