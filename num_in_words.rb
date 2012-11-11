class Integer
  def in_words
  
    if self < 0  # No negative numbers
      return 'Please enter a number that isn\'t negative.'
    end
    
    if self == 0 # Zero
      return 'zero'
    end
    
    number_string ="" #  String to return
    
    ones_array = ['one','two','three','four','five','six','seven','eight','nine']
    tens_array = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    teens_array = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
    
    # test case is 135557
    leftover = self
    
    #trillion
    if leftover == 1000000000000
      number_string = "one trillion"
      leftover = 0
    end
    
    # billions
    if leftover >= 1000000000
      billions = leftover/1000000000
      leftover = leftover%1000000000
        if billions > 0 && number_string !=""
          number_string = number_string + " " + billions.in_words + " billion"
        else
          number_string = number_string + billions.in_words + " billion"
        end
    end
    
    # millions
    if leftover >= 1000000
      millions = leftover/1000000 
      leftover = leftover%1000000
        if millions > 0 && number_string !=""
          number_string = number_string + " " + millions.in_words + " million"
        else
          number_string = number_string + millions.in_words + " million"
        end
    end
    
    # thousands
    if leftover >= 1000
      thousands = leftover/1000 # thousands = 135
      leftover = leftover%1000 # 557
        if thousands > 0 && number_string !=""
          number_string = number_string + " " + thousands.in_words + " thousand"
        else
          number_string = number_string + thousands.in_words + " thousand"
        end
    end
    
    # hundreds
    if leftover >=100
      hundreds = leftover/100 # hundreds = 5
      leftover = leftover%100 # 57
      if hundreds > 0 && number_string !=""
          number_string = number_string + " " + hundreds.in_words + " hundred"
      else
          number_string = number_string + hundreds.in_words + " hundred"
      end
    end
    
    #tens
    if leftover >=20 || leftover == 10
      tens = leftover/10
      leftover = leftover%10
      if tens > 0 && number_string !=""
        number_string = number_string + " " + tens_array[tens-1]
      else
        number_string = number_string + tens_array[tens-1]
      end
    end
    
    #teens
    if leftover < 20 && leftover > 10  
      leftover = leftover%10
      if leftover > 0 && number_string !=""
        number_string = number_string + " " + teens_array[leftover-1]
      else
        number_string = number_string + teens_array[leftover-1]
      end
      leftover = 0
    end
      
    #ones
    if leftover < 10 && leftover > 0
      if number_string !=""
        number_string = number_string + " " + ones_array[leftover-1]
      else
        number_string = number_string  + ones_array[leftover-1]
      end
    end

    number_string
    
  end
end