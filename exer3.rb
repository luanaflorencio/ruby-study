# Crie uma classe para representar datas.
# 1. Represente uma data usando três atributos: o dia, o mês, e o ano.
# 2. Sua classe deve ter um construtor que inicializa os três atributos e verifica a validade dos valores
# fornecidos.
# 3. Forneça um construtor sem parâmetros que inicializa a data com a data atual fornecida pelo sistema
# operacional.
# 4. Forneça um método set um get para cada atributo.
# 5. Forneça o método toString para retornar uma representação da ata como string. Considere que a
# data deve ser formatada mostrando o dia, o mês e o ano separados por barra (/).
# 6. Forneça uma operação para avançar uma data para o dia seguinte.
# 7. Escreva um aplicativo de teste que demonstra as capacidades da classe.
# Garanta que uma instância desta classe sempre esteja em um estado consistente.

class Date
    def initialize(day, month, year)
        @@day = day
        @@month = month
        @@year = year

        if @@day < 01 || @@day > 31 
            puts "Dia #@@day não é válido"
        end

        if @@month < 01 || @@month > 12
            puts "#@@month não é um mês válido"
        end 
    end

    def initialize()
        @@date = Time.new
        @@day = @@date.day
        @@month = @@date.month
        @@year = @@date.year
    end

    def setDay
        @@day
    end

    def setMonth
        @@month
    end

    def setYear
        @@year
    end

    def getDay
        @@day
    end

    def getMonth
        @@month
    end

    def getYear
        @@year
    end

    def format
        puts @@date.to_s
        puts @@date.strftime("%d/%m/%Y")
        puts @@day + 1 / @@month / @@year
    end

end

date = Date.new(Time.now)
seeDate = date.initialize()