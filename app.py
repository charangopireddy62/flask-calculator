from flask import Flask, request, jsonify
import calculator

app = Flask(__name__)

@app.route('/')
def home():
    return "🧮 Calculator Flask App is running!"

@app.route('/add')
def add_route():
    a = float(request.args.get('a'))
    b = float(request.args.get('b'))
    result = calculator.add(a, b)
    return jsonify({'result': result})

@app.route('/subtract')
def subtract_route():
    a = float(request.args.get('a'))
    b = float(request.args.get('b'))
    result = calculator.subtract(a, b)
    return jsonify({'result': result})

if __name__ == '__main__':
    app.run(debug=True)
