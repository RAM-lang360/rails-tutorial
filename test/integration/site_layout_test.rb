require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    #root_pathにアクセス
    get root_path
    #homeテンプレートが表示されることを確認
    assert_template 'static_pages/home'
    #各リンクを確認
    assert_select "a[href=?]", root_path, count: 2 #rootへのリンクが2つあることを確認
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
  end
end
