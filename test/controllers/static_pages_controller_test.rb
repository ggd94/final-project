require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  #questa funzione setup girera prima di goni test !
  def setup
    @base_title = "Toy App"
  end


  test "should get home" do
    get  root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end


end
