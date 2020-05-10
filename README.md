## Prerequisites

The purescript optimized builds require `zephyr` which cannot be installed via NPM.

You can download the binary from the releases page:
https://github.com/coot/zephyr/releases

Zephyr 0.2.2 was used for the below bundles.

## Summary of optimized, gzipped, bundle sizes for equivalent apps.

Language / Framework | Optimized (KB) | Gzipped (KB)
--- | ---:| ---:
elm | 28 | 10
purescript react-basic-hooks | 134 | 44
purescript halogen v5 | 113 | 24

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
npm run build-production

dist/react.a8abe33a.js    134.34 KB

cat dist/react.a8abe33a.js | gzip -c | wc -c
43941
```

44 KB

### purescript halogen v5
```
npm run build-production

dist/halogen.0a8ee247.js    113 KB

cat dist/halogen.0a8ee247.js | gzip -c | wc -c
24091
```

24 KB
