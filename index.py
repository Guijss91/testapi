import pandas as pd
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def homepage():
    return "We're on boys"

@app.route('/pegarvendas')
def pegarvendas():
    tabela = pd.read_csv('Dados.csv')
    total_vendas = tabela['Vendas'].sum()
    resposta = {'total de vendas':total_vendas}
    return jsonify(resposta)

app.run(host='0.0.0.0')
