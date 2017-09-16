# frozen_string_literal: true

class HelloController < ApplicationController
  def index
    render plain: 'Hello, World!'
  end

  def view
    @msg = 'Hello, World!'
  end

  def list
    @books = Book.all
  end

  def app_var
    render plain: MY_APP['logo']['source']
  end
end
