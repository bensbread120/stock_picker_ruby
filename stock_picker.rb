#first reverse the array 
#then iterate over each element testing what the highest number be when the following values are subtracted
def stock_picker(array)
   
   highest_profit = [0]
   array.each_with_index do |value, index|
        bank = 0
        bank-=value
        array.slice((index+1)..).each_with_index do |sub_val, sub_index|
            (bank+sub_val > highest_profit[0])? (highest_profit = [bank+sub_val, index, sub_index+index+1]) : ()
        end
        p highest_profit
    end
end

stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12 



# hash = {}
    # array.each_with_index do |value, index|
        
    #     largest_difference = {0: 0}
    #     reverse_array = array.slice((index+1)..)reverse 

    #     reverse_array.each_with_index do |subtractor, sub_index|
    #         (largest_difference < subtractor-value)? (largest_difference = subtractor-value) : ()
    #     end
    #     h
    # end