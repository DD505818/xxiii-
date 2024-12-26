from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def dashboard():
    return render_template('dashboard.html')

def start_ui():
    print("Starting UI Dashboard...")
    app.run(debug=True)
