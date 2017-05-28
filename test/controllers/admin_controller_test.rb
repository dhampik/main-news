# frozen_string_literal: true

require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news = news(:one)
  end

  test 'should get edit' do
    get admin_url
    assert_response :success
  end
end
