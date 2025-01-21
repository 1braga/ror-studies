module ApplicationHelper
    def sexo(sex)
        html = ""
        if sex == 'M'
        html = "Masculino"
        elsif sex == 'F'
        html = "Feminino"
        end

        html
    end
end
