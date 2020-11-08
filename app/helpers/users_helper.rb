module UsersHelper
    def happy_converter(level)
        if level && level > 2
            return "happy"
        else
            "sad"
        end
    end
end
