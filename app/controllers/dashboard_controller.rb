class DashboardController < ApplicationController
    def index
        
        hash = Category.group(:type_id).count
       ## keys = hash.keys.map(&:name)
       ## [keys, hash.values].transpose.to_h
      
       arr =[]
       ha = {}
       keys = hash.each{| key, value| arr <<{ name: Category.type_name(key), id: key, value: value} }
       arr.each do |ele|
         ha[ele[:name]]= ele[:value]
       end
       
        @categories = ha
      
    end
end
