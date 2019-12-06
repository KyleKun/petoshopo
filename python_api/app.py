from flask import Flask
from totalvoice.cliente import Cliente

app = Flask(__name__)

@app.route('/')
def start():
    cliente = Cliente('83e0121ebf6382715dc151f9376a1bfb', 'api.totalvoice.com.br') #ex: api.totalvoice.com.br
    # numero_origem = '011933333333'
    numero_destino = '019999104356'
    mensagem = "teste envio sms"
    response = cliente.sms.enviar(numero_destino, mensagem)
    print(f'Destino: {numero_destino}')
    print(response)
    return 'OK'


if __name__ == '__main__':
    app.run()
