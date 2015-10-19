class BubbleSort
  def initialize(array)
    @array = array
  end

  def sort

    def cur
      cur = 0
    end

    def nex
      cur + 1
    end

    def switch
      @array[cur],@array[nex] = @array[nex],@array[cur]
    end

    if @array == []
      []
    elsif @array == [@array[0]]
      @array
    elsif @array.length == 2
      if @array[0] < @array[1]
        @array
      else @array[0] > @array[1]
        switch
      end
    elsif @array.length == 3         #5,7,10,8
      if @array[0] < @array[1] and @array [1]< @array[2]
        @array
      else
        if @array[0] > @array[1]
          @array[1],@array[0] = @array[0],@array[1]
          if @array[1] > @array[2]
            @array[2],@array[1] = @array[1],@array[2]
            @array
            if @array[0] > @array[1]
              @array[1],@array[0] = @array[0],@array[1]
              if @array[1] > @array[2]
                @array[2],@array[1] = @array[1],@array[2]
                @array
              else
                @array
              end
            else
              @array
            end
          else
            @array
          end
        else
          if @array[1] > @array[2]
            @array[2],@array[1] = @array[1],@array[2]
            @array
          else
            @array
          end
        end
      end
#######################
    else          #5,7,10,8
      if @array[0] < @array[1] and @array [1]< @array[2] and @array[2] < @array[3]
        @array
      elsif @array[0] < @array[1] and @array [1]< @array[2] and @array[2] > @array[3]
        @array[2],@array[3] = @array[3],@array[2]
        @array
      else
        if @array[0] > @array[1]
          @array[1],@array[0] = @array[0],@array[1]
          if @array[1] > @array[2]
            @array[2],@array[1] = @array[1],@array[2]
            @array
            if @array[0] > @array[1]
              @array[1],@array[0] = @array[0],@array[1]
              if @array[1] > @array[2]
                @array[2],@array[1] = @array[1],@array[2]
                @array
              else
                @array
              end
            else
              @array
            end
          else
            @array
          end
        else
          if @array[1] > @array[2]
            @array[2],@array[1] = @array[1],@array[2]
            @array
          else
            @array
          end
        end
      end
    end











  end
end
