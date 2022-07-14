import requests

url = "Enter your function URL"
data = {'input': 'Testing Lambda Function URL(s)'}

resp = requests.post(url, json = data)
#to view body of response
#print(resp.text)

#Monitor in CW Invocations
for i in range(100):
    resp = requests.post(url, json = data)

