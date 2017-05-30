# firehose track 3, lesson 47 - file created 29 may 17

class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])  # load user info from database for user w/id passed
    end
end
