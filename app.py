from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("index.html")  # Render the 'index.html' template

@app.route("/about")
def about():
    return render_template("about.html")  # Render the 'about.html' template

if __name__ == "__main__":
    app.run(debug=True, port=8000)
