class Conta
    attr_reader :numeros, :titular
    attr_accessor :saldo
    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end
    
end