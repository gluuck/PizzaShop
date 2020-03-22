#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require "sinatra/activerecord"

set :database , "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
#	before_filter :find_model

	

#	private
#	def find_model
#		@model = Model.find(params[:id]) if params[:id]
#	end
end

get '/' do
	erb :index
end

get '/about' do
	erb :about
end