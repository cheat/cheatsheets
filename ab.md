# To send 100 requests with a concurency of 50 requests to a URL:
ab -n 100 -c 50 <url>

# To send requests for 30 seconds with a concurency of 50 requests to a URL:
ab -t 30 -c 50 <url>
