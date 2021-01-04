Rails.application.config.generators do |g|
  g.skip_routes true
  g.assets false
  g.helper false
end

#rails g controller コマンドで作成されるファイルを制限する。＝コントローラとビュー以外のファイルが作成されないようになる。
