"use strict";
/* Flatcraft service worker: 当日オフラインでも動くように主要ファイルをキャッシュする。
   バージョンを上げたら CACHE の名前も上げること（古い版が残る事故防止）。 */
const CACHE = "flatcraft-v0.2.4";
const FILES = ["./", "./index.html", "./manifest.webmanifest", "./assets/icon.svg", "./assets/mii.svg"];

self.addEventListener("install", (e) => {
  e.waitUntil(caches.open(CACHE).then((c) => c.addAll(FILES)).then(() => self.skipWaiting()));
});
self.addEventListener("activate", (e) => {
  e.waitUntil(
    caches.keys()
      .then((keys) => Promise.all(keys.filter((k) => k !== CACHE).map((k) => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});
self.addEventListener("fetch", (e) => {
  e.respondWith(caches.match(e.request).then((hit) => hit || fetch(e.request)));
});
