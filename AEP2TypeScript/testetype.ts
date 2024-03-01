import express from 'express';
import axios from 'axios';
import fs from 'fs';
import request from 'supertest';

const app = express();

async function buscarComandante(nome: string): Promise<any> {
    try {
        const response = await axios.get(`https://api.scryfall.com/cards/named?exact=${nome}`);
        return response.data;
    } catch (error) {
        throw new Error('Erro ao buscar comandante');
    }
}

function salvarEmJSON(cards: any[]): void {
    fs.writeFileSync('baralho.json', JSON.stringify(cards, null, 2));
}

app.get('/baralho', async (req, res) => {
    try {
        const comandante = await buscarComandante('Gisa, ressuscitadora gloriosa');
        // Lógica para buscar os 99 cards adicionais com base nas cores do comandante
        const baralho = [comandante]; // Supondo que comandante seja incluído no baralho
        salvarEmJSON(baralho);
        res.json(baralho);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao buscar o baralho' });
    }
});

// Teste automatizado
describe('Testes de rota', () => {
    test('Deve retornar status 200 e um array de cards', async () => {
        const response = await request(app).get('/baralho');
        expect(response.status).toBe(200);
        expect(Array.isArray(response.body)).toBe(true);
    });
});

app.listen(3000, () => {
    console.log('Servidor rodando na porta 3000');
});

export default app;
