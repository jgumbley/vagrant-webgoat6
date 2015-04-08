from flask import Flask, request

app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def catch():
    print str(request.form)
    return 200

if __name__ == "__main__":
    app.run()
