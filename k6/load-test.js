import http from 'k6/http';
import { check, sleep } from 'k6';

// Sanitized portfolio example.
// Replace with a public demo endpoint only.
// Do NOT commit private or production endpoints.
const BASE_URL = __ENV.BASE_URL || 'https://example.com';

export const options = {
  vus: 5,
  duration: '30s',
};

export default function () {
  const res = http.get(`${BASE_URL}/health`);

  check(res, {
    'status is successful': (r) => r.status >= 200 && r.status < 400,
    'response time < 1000ms': (r) => r.timings.duration < 1000,
  });

  sleep(1);
}
