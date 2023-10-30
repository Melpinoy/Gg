from collections import namedtuple
import altair as alt
import math
import pandas as pd
import streamlit as st
import os
import subprocess
import requests
import json
import time

def timer(t):
    p = t
    for x in range(p, 0, -1):
        wak = time.strftime("[%M:%S]", time.gmtime(x))
        print("\r                          \r")
        print(f"\r  \033[1;97mwait \033[1;93m{wak}      \r", end='')
        time.sleep(1)
        
def curl_request(url, method, data=None):
    headers = {
        "Host": "oilbnb.io",
        "upgrade-insecure-requests": "1",
        "content-type": "application/json",
        "x-xsrf-token": "eyJpdiI6IkVuZ1o1UG1zeVhqWWFLUjVFN2w5dnc9PSIsInZhbHVlIjoiSXhQdldvQVdRVElqc01Dc1B4YU54MnBYN2R3UjZwU1NtL1JDaENUOE1Da2Q1VCtWT3lSTmxRclVNNEdUdVRObkdNbVFGell3TjgvU2tQSEl1b0VSS3FOZUJGUGFPM2RCdk5HcFJXU0F3YTJrYzNrMi83V29GbDl4VkVpWE1wWUUiLCJtYWMiOiJkMmU4ZWIyODUwYzc3YmMzNTIwYTRmNGQyMGIwMjMyNDM2YjI3OGJmNTMyYTZjNTI5OTY0MmU5OTBhOGY4ZjdjIiwidGFnIjoiIn0=",
        "cookie": "_ga=GA1.1.1318981498.1698658851;_ga_YY6TB06MV7=GS1.1.1698658850.1.1.1698658882.0.0.0;XSRF-TOKEN=eyJpdiI6IkVuZ1o1UG1zeVhqWWFLUjVFN2w5dnc9PSIsInZhbHVlIjoiSXhQdldvQVdRVElqc01Dc1B4YU54MnBYN2R3UjZwU1NtL1JDaENUOE1Da2Q1VCtWT3lSTmxRclVNNEdUdVRObkdNbVFGell3TjgvU2tQSEl1b0VSS3FOZUJGUGFPM2RCdk5HcFJXU0F3YTJrYzNrMi83V29GbDl4VkVpWE1wWUUiLCJtYWMiOiJkMmU4ZWIyODUwYzc3YmMzNTIwYTRmNGQyMGIwMjMyNDM2YjI3OGJmNTMyYTZjNTI5OTY0MmU5OTBhOGY4ZjdjIiwidGFnIjoiIn0%3D;oilbnb_session=eyJpdiI6IndZMGwxZTVweGZXckV5Z0ptN0xlMVE9PSIsInZhbHVlIjoiRlVsSkxGdjNCUG55VWdub2R0UHFtT1NSSzZUWUhjL29EQVZJREFpR2J1QmtRNGVoSkx5UC92UUIrWkUrdTVBbmxaUS80U003L1dwdjRhbE9PYUxBTEh6ZkdUTSs2a05xQlNSNzk2QXg3NVpWREpMYVlTY0VhN1lwQ01xWlZYYnQiLCJtYWMiOiJiN2NkMjQzMjQ0ZjYyMjFlMjQwNzcxY2E3YzU5OWE3MjZmMDFkZDk5ZTRiMTIzZGNmZmNjN2E4M2UxNjhhZTQyIiwidGFnIjoiIn0%3D",
        "user-agent": "Mozilla/5.0 (Linux; Android 10; JEF-AN00 Build/QD4A.200805.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.80 Mobile Safari/537.36"
    }

    if method == 'POST':
        response = requests.post(url, headers=headers, data=data, verify=False)
    else:
        response = requests.get(url, headers=headers, verify=False)

    return response.text

def cap(url, method, data=None):
    headers = {
        "Accept": "*/*",
        "Accept-Encoding": "gzip, deflate",
        "Accept-Language": "id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7",
        "Connection": "keep-alive",
        "content-type": "application/json",
        "user-agent": "Mozilla/5.0 (Linux; Android 10; JEF-AN00 Build/QD4A.200805.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.80 Mobile Safari/537.36"
    }

    if method == 'POST':
        response = requests.post(url, headers=headers, data=data, verify=False)
    else:
        response = requests.get(url, headers=headers, verify=False)

    return response.text
    

	

ff = 1
while True:
    if ff == 360:
        break

    url = "http://goodxevilpay.pp.ua/in.php?key=ZE58yBOFSd0V20MRU3Wdj8LIFD4519lZ&method=userrecaptcha&googlekey=6LeC-6coAAAAAEaCXlDfLYBipQxaK3BJJpv9_hJc&pageurl=https://oilbnb.io/user/claim/1"
    respo = cap(url, 'GET')

    id = respo.replace("OK|", "")
    if id == '':
        continue

    r = 1
    while r != 30:
        url = f"http://goodxevilpay.pp.ua/res.php?action=get&id={id}&key=ZE58yBOFSd0V20MRU3Wdj8LIFD4519lZ&header_acao=1&json=1"
        res = cap(url, 'GET')
        jons = json.loads(res)
        rest = jons['request']
        if rest == 'CAPCHA_NOT_READY':
            print(f"` Please wait.. {r} \r")
            r += 1
            time.sleep(5)
        elif rest == "ERROR_CAPTCHA_UNSOLVABLE":
            print(f"` Captcha Error.. {r} \r")
            r += 1
            time.sleep(5)
            break
        elif rest == "":
            print(f"` wait.. {r} \r")
            r += 1
            time.sleep(5)

    date_default_timezone_set('Asia/Jakarta')
    timestamp = time.time()
    wak = time.strftime("[H:i:s]", time.gmtime(timestamp))

    url = 'https://oilbnb.io/user/claim/1'
    data = '{"captcha":"' + rest + '"'
    response = curl_request(url, 'POST', data)
    jons = json.loads(response)
    su = jons['message']
    if su == "Captcha error":
        continue
    print(f"{wak} Response = {su}\n")
    cc = 310
    timer(cc)
    ff += 1
