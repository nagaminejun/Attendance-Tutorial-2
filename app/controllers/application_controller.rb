class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # 和訳、例外を除いて偽造から保護する
  include SessionsHelper
end
