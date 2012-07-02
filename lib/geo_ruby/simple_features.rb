module GeoRuby
  module SimpleFeatures
    class MultiPolygon
      def to_json
        coord_array = self.as_json[:coordinates]
        
        ## Fixes weird, unnecessary extra array
        0.upto(coord_array.count - 1).each do |i|
          coord_array[i] = coord_array[i][0]
        end
        
        return coord_array
      end
    end
  end
end