def app(envirov, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return [bytes('\r\n'.join(envirov['QUERY_STRING'].split('&')),
            encoding='utf8')]
