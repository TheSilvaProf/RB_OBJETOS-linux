require_relative "cliente"

class Conta
    attr_reader :numero, :titular
    attr_accessor :saldo
    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end
    def sacar(valor)
        if saldo >= valor
            self.saldo -= valor
        else
            puts "Saldo insuficiente."               
        end
    end
    def depositar(valor)
        self.saldo += valor                
    end
    def transferir(c_dest, valor)
        if saldo >= valor
            sacar(valor)
            c_dest.depositar(valor)
        else
            puts "Saldo insuficiente." 
        end               
    end   
end