class UsersController < ApplicationController
    def login_form
        @user = User.find_by(email: params[:email], pass: params[:pass])
        if @user
            flash[:notice] = "ログインしました"
            redirect_to("/tweets/index")
        else
            @error_message = "メールアドレスまたはパスワードが間違っています"
            @email = params[:email]
            @pass = params[:pass]
            render("users/login_form")
        end
    end

end
