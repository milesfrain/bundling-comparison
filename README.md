## Summary of optimized, gzipped, bundle sizes for equivalent apps.

Language / Framework | Optimized (KB) | Gzipped (KB)
--- | ---:| ---:
elm | 28 | 10
purescript react-basic-hooks | 348 | 81
purescript halogen v5 | 680 | 127

### elm

```
./build.sh

Compiled size:108329 bytes  (elm.js)
Minified size:27659 bytes  (elm.min.js)
Gzipped size: 9606 bytes
```

10 KB

### purescript react-basic-hooks

```
parcel build src/index.html
✨  Built in 616ms.

dist/src.63dbf52e.js.map    922.62 KB    112ms
dist/src.63dbf52e.js        347.78 KB    225ms
dist/index.html                 186 B      4ms

cat dist/src.63dbf52e.js  | gzip -c | wc -c
81400
```

81 KB

### purescript halogen v5
```
parcel build src/index.html
✨  Built in 714ms.

dist/src.f4d8799e.js.map    ⚠️  2.1 MB    148ms
dist/src.f4d8799e.js        680.47 KB    321ms
dist/index.html                 150 B      4ms

cat dist/src.f4d8799e.js | gzip -c | wc -c
127055
```

127 KB
