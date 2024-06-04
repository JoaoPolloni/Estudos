from flask import Flask, render_template, request, jsonify
import requests
import matplotlib.pyplot as plt
from matplotlib.ticker import PercentFormatter
import io
import base64

app = Flask(__name__)

def get_name_data(name):
    url = f'https://servicodados.ibge.gov.br/api/v2/censos/nomes/{name}'
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return None

def format_decade_label(decade):
    return decade.replace('[', '').replace('[', '').replace(']', '').replace('[', '')

def calculate_percentage_change(data):
    changes = {}
    for name, info in data.items():
        frequencies = {format_decade_label(entry['periodo']): entry['frequencia'] for entry in info[0]['res']}
        decades = sorted(frequencies.keys())
        changes[name] = {}
        for i in range(1, len(decades)):
            previous_decade = decades[i - 1]
            current_decade = decades[i]
            previous_frequency = frequencies[previous_decade]
            current_frequency = frequencies[current_decade]
            percentage_change = ((current_frequency - previous_frequency) / previous_frequency) * 100
            changes[name][current_decade] = percentage_change
    return changes

def plot_trends(changes):
    plt.figure(figsize=(12, 6))  # Ajuste da largura do gráfico
    for name, change in changes.items():
        decades = list(change.keys())
        percentages = list(change.values())
        plt.plot(decades, percentages, label=name)
    
    plt.xlabel('Década')
    plt.ylabel('Mudança Percentual (%)')
    plt.gca().yaxis.set_major_formatter(PercentFormatter())
    plt.title('Tendência de Popularidade dos Nomes')
    plt.legend()

    img = io.BytesIO()
    plt.savefig(img, format='png')
    img.seek(0)
    plot_url = base64.b64encode(img.getvalue()).decode('utf8')
    plt.close()
    return plot_url

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/analyze', methods=['POST'])
def analyze():
    names = request.json.get('names')
    data = {}
    for name in names:
        data[name] = get_name_data(name)
    changes = calculate_percentage_change(data)
    plot_url = plot_trends(changes)
    return jsonify({'plot_url': plot_url})

if __name__ == '__main__':
    app.run(debug=True)