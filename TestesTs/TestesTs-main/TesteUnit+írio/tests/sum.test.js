import {describe, expect, test} from '@jest/globals';
import {ErrorMessages} from '../src/errormessages.enum'
import {Matemagica} from '../src/matemagica'


describe('Somar dois numeros', () => {

    test('Deve somar dois numeros', () => {
        const matemagica = new Matemagica()
        matemagica.setX(1)
        matemagica.setY(2)

        expect(matemagica.getSum()).toBe(3)
    })

    test('Deve subtrair dois numeros', () => {
        const matemagica = new Matemagica()
        matemagica.setX(2)
        matemagica.setY(1)

        expect(matemagica.getSum()).toBe(1)
    })

    test('Deve retornar um erro ao informar string no lugar de numero', () => {
        const matemagica = new Matemagica()

        expect(matemagica.setX('pipipi')).toBe(ErrorMessages.INVALID_OPERATION)
        expect(matemagica.setY('popopo')).toBe(ErrorMessages.INVALID_OPERATION)
    })
})