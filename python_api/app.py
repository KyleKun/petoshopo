from flask import Flask, request
from totalvoice.cliente import Cliente

app = Flask(__name__)
client = Cliente('83e0121ebf6382715dc151f9376a1bfb', 'api.totalvoice.com.br')


def get_values():
    return request.args.get('name'), request.args.get('pet'), request.args.get('date'), request.args.get('phone')


@app.route('/')
def start():
    return 'STARTED'


@app.route('/sms')
def sms_vaccination():
    name, pet, date, phone = get_values()
    msg = "Hello {}!\nDo not forget to bring {} to vaccination on {}.\nSee ya ;)".format(name, pet, date)
    response = client.sms.enviar(phone, msg)
    print(response)
    return 'OK'


@app.route('/feedback')
def sms_feedback():
    name, pet, date, phone = get_values()
    msg = "Hello {}!\nNow {} is all clean and smelly :)\nHow much are you satisfied with it, from 0 to 10?".format(name, pet)
    response = client.sms.enviar(phone, msg)
    print(date)
    print(response)
    return 'OK'


@app.route('/call')
def call_customer():
    name, pet, date, phone = get_values()
    msg = "Hello {}!\n{} is ready and waiting for you. Please, call us if you cannot come here for now. See you, {}".format(name, pet, name)
    response = client.tts.enviar(phone, msg, 1, False, 'en-Joanna')
    print(response)
    print(date)
    return 'OK'


if __name__ == '__main__':
    app.run()
