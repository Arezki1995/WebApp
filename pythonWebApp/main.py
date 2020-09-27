from flask import Flask, render_template, url_for
import mysql.connector
app = Flask(__name__, static_folder='assets')

######################################


mydb = mysql.connector.connect(
  host="172.18.0.4",
  user="root",
  passwd="password",
  db="testdb"
)



mycursor = mydb.cursor(dictionary=True)

def getWebsiteData():
	mycursor.execute("SELECT * FROM presentation")
	presentation=mycursor.fetchall()

	mycursor.execute("SELECT * FROM slideCaption")
	slideCaption=mycursor.fetchall()
	print(slideCaption)

	WebsiteData={
		"presentation":presentation,
		"slideCaption":slideCaption
	}

	return WebsiteData

def getNews():
	mycursor.execute("SELECT * FROM News")
	result=mycursor.fetchall()
	news=[]
	for x in result:
		news.append(x)
	return news


def getProducts():
	mycursor.execute("SELECT * FROM Products")
	result=mycursor.fetchall()
	products=[]
	for x in result:
		products.append(x)
	return products



@app.route("/")
@app.route("/home")
def home():
	WebsiteData=getWebsiteData()
	news=getNews()
	return render_template("home.html", title="Home", WebsiteData=WebsiteData, news=news)


@app.route("/products")
def products():
	WebsiteData=getWebsiteData()
	news=getNews()
	products=getProducts()
	return render_template("products.html", title="Products", product_list=products ,WebsiteData=WebsiteData, news=news)


@app.route("/about")
def about():
	WebsiteData=getWebsiteData()
	news=getNews()
	return render_template("about.html", title="About" ,WebsiteData=WebsiteData, news=news)


@app.route("/contact")
def contact():
	WebsiteData=getWebsiteData()
	news=getNews()
	return render_template("contact.html", title="Contact" ,WebsiteData=WebsiteData, news=news)

if __name__ == "__main__":
	app.run(debug=True, host='0.0.0.0')