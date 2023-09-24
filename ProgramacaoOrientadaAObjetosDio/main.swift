//
//  main.swift
//  ProgramacaoOrientadaAObjetosDio
//
//  Created by Fernanda Perovano on 17/09/23.
//

import Foundation

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    var valorSalarioAnual: Double
    
    init(nome: String, salario: Double, cpf: String, valorSalarioAnual: Double) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
        self.valorSalarioAnual = valorSalarioAnual
    }
        
    func calcularValorBonus(valorSalarioAnual: Double) -> Double {
            
            func valorSalarioAnualComBonus () -> Double {
                var salarioTotal = valorSalarioAnual + (valorSalarioAnual * 0.05)
                return salarioTotal
            }
            return valorSalarioAnualComBonus()
        }
}

    class ProgramadorIos: Funcionario {
        var plataformaDeTrabalho: String
        
        init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: String, valorSalarioAnual: Double) {
            self.plataformaDeTrabalho = plataformaDeTrabalho
            super.init(nome: nome, salario: salario, cpf: cpf, valorSalarioAnual: valorSalarioAnual)
        }
        
        override func calcularValorBonus(valorSalarioAnual: Double) -> Double {
            
            func valorSalarioAnualComBonus () -> Double {
                var salarioTotal = valorSalarioAnual + (valorSalarioAnual * 0.20)
                return salarioTotal
            }
            return valorSalarioAnualComBonus()
        }
}

class ProgramadorAndroid: ProgramadorIos {
    
    override init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: String, valorSalarioAnual: Double) {
        super.init(plataformaDeTrabalho: plataformaDeTrabalho, nome: nome, salario: salario, cpf: cpf, valorSalarioAnual: valorSalarioAnual)
    }
    
    override func calcularValorBonus(valorSalarioAnual: Double) -> Double {
        
        func valorSalarioAnualComBonus () -> Double {
            var salarioTotal = valorSalarioAnual + (valorSalarioAnual * 0.10)
            return salarioTotal
        }
        return valorSalarioAnualComBonus()
    }
}

var trabalhador: Funcionario = Funcionario(nome: "Jobs", salario: 200.00, cpf: "009.003.002-12", valorSalarioAnual: 120000.00)
print("O trabalhador \(trabalhador.nome), de cpf \(trabalhador.cpf), recebe um salário mensal de \(trabalhador.salario), totalizando um salario anual de \(trabalhador.valorSalarioAnual) sem bonus")
var salarioAnualTotalFuncionario = trabalhador.calcularValorBonus(valorSalarioAnual: 120000.00)
print("O salario do \(trabalhador.nome) reajustado com o bonus recebido anualmente é \(salarioAnualTotalFuncionario)")

var programador1: ProgramadorIos = ProgramadorIos(plataformaDeTrabalho: "Ios", nome: "Fernanda", salario: 5000.00, cpf: "123.456.789-00", valorSalarioAnual: 60000)
print("A trabalhadora \(programador1.nome) programadora \(programador1.plataformaDeTrabalho), de cpf \(programador1.cpf), recebe um salário mensal de \(programador1.salario), totalizando um salario anual de \(programador1.valorSalarioAnual) sem bonus")
var salarioAnualTotalProgramador1 = programador1.calcularValorBonus(valorSalarioAnual: programador1.valorSalarioAnual)
print("O salario de \(programador1.nome) reajustado com o bonus recebido anualmente é \(salarioAnualTotalProgramador1))")

var programador2: ProgramadorAndroid = ProgramadorAndroid(plataformaDeTrabalho: "Android", nome: "Paulo", salario: 4000.00, cpf: "987.654.321-01", valorSalarioAnual: 48000)
print("O trabalhador \(programador2.nome) programador \(programador2.plataformaDeTrabalho), de cpf \(programador2.cpf), recebe um salário mensal de \(programador2.salario), totalizando um salario anual de \(programador2.valorSalarioAnual) sem bonus")
var salarioAnualTotalProgramador2 = programador2.calcularValorBonus(valorSalarioAnual: programador2.valorSalarioAnual)
print("O salario de \(programador2.nome) reajustado com o bonus recebido anualmente é \(salarioAnualTotalProgramador2))")

