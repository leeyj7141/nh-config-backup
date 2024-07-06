import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  stages: [
    { duration: '30s', target: 50 }, // 30초 동안 VU를 50까지 증가
    { duration: '1m', target: 50 },  // 1분 동안 VU 유지
    { duration: '10s', target: 0 },  // 10초 동안 VU를 0으로 감소
  ],
};

export default function () {
  http.get('http://nginx-test.test.dom');
  sleep(1);
}

