require 'sinatra'
require 'sinatra/reloader'

get '/' do
    'Put this in your pipe & smoke it!'
end

def caesar_cipher(string, shift_var)
    if shift_var > 26
        shift_var = shift_var % 26
    end
    split_string = string.split("")
    split_string.map! do |char|
        char = shift(char, shift_var)
    end

    return split_string.join("")
end

def shift(char, shift_var)
    if char.match(/[a-z]/)
        if (char.ord + shift_var) > 122
            adjustted_shift_variable = (char.ord + shift_variable) - 122
            return (96 + adjustted_shift_variable).chr
        else
            return (char.ord + shift_var).chr
        end
    elsif char.match(/[A-Z]/)
        if (char.ord + shift_var) > 90
            adjustted_shift_variable = (char.ord + shift_variable) - 90
            return (64 + adjustted_shift_variable).chr
        else
            return (char.ord + shift_var).chr
        end
    else
        return char
    end
end


# puts caesar_cipher("Hello", 30)