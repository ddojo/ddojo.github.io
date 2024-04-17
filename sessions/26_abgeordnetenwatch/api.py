from wget import download
import requests

requests.geturl('https://www.abgeordnetenwatch.de/api/v2/votes/')
#filename1 = download('https://www.abgeordnetenwatch.de/api/v2/votes/')
#filename2 = download("https://www.abgeordnetenwatch.de/api/v2/polls?field_legislature[eq]=111&field_poll_date[sw]=2017")
#filename3 = download("https://www.abgeordnetenwatch.de/api/v2/polls?field_legislature[eq]=111&field_poll_date[sw]=2018")
