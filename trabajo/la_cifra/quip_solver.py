import json
import sys
import time
from pathlib import Path
from urllib import request

mode = sys.argv[1] if len(sys.argv) > 1 else 'auto'
cipher = Path('cipher_ascii.txt').read_text(encoding='utf-8', errors='ignore').strip()
payload = {
    'ciphertext': cipher,
    'clues': '',
    'mode': mode,
    'was_auto': mode == 'auto',
    'was_clue': mode == 'clue'
}
data = json.dumps(payload).encode('utf-8')
headers = {'Content-Type': 'application/x-www-form-urlencoded'}
solve_req = request.Request('https://www.quipqiup.com/solve', data=data, headers=headers)
with request.urlopen(solve_req, timeout=10) as resp:
    solve_resp = json.load(resp)
job_id = solve_resp['id']
poll_interval = solve_resp.get('poll_interval', 1.0)
solutions = []
while True:
    time.sleep(poll_interval)
    status_payload = json.dumps({'id': job_id}).encode('utf-8')
    status_req = request.Request('https://www.quipqiup.com/status', data=status_payload, headers=headers)
    with request.urlopen(status_req, timeout=10) as resp:
        status = json.load(resp)
    sols = status.get('solutions', [])
    if sols:
        solutions.extend(sols)
    if status.get('last'):
        break
solutions.sort(key=lambda s: s['logp'], reverse=True)
print('mode={} total_solutions={}'.format(mode, len(solutions)))
for sol in solutions[:5]:
    print('logp={}'.format(sol['logp']))
    print(sol['plaintext'])
    print('-' * 40)
