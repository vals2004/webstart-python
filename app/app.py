import logging
from aiohttp import web
import os

async def home_handler(request):
    text = "Hello, world!"
    return web.Response(text=text)

app = web.Application()

if __name__=='__main__':
    app.add_routes([web.get(r'/', home_handler)])
    logging.info("In service started")
    web.run_app(app, port=9000, host='0.0.0.0')