class ApplicationController < ActionController::Base

  #deviseでログイン機能を実装して保存したいカラムを追加する場合
  #devise_parameter_sanitizerメソッド、（configure_permitted_parametersのメソッド名は慣習）
  #.permit(:sign_up、keys: [:新規登録する時の引数])
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
