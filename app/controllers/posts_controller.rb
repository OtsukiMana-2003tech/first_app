class PostsController < ApplicationController

  def index # indexアクション(一覧表示ページ)を定義
    # @post = Post.find(1) # Postモデルのデータベースから1番目のレコードを@postに代入
    @posts = Post.all # データベースから全てのデータを取得。変数名を複数のデータが入っていることが分かりやすいように複数形に変更
  end

  # newアクションを定義
  def new 
  end

  # createアクションを定義。保存機能を定義する
  def create # タイプミスに注意！
    # contentカラムにフォームから取得した情報をparamsに格納して保存する
    Post.create(content: params[:content])
    # createアクション実行後に一覧画面に移動する
    redirect_to "/posts"
  end
end
