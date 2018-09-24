## slickgrid-cljs
Bundling https://github.com/mleibman/SlickGrid as a jar.

I tried to do this using [cljsjs and boot](https://github.com/cljsjs/packages/wiki/Creating-Packages), but failed, and fell back to using [uglify.js](http://lisperator.net/uglifyjs/) and straight up `deps.cljs`.
I have used the namespace `cljsjs.slickgrid` as what the installation "provides", because I hope eventually this ends up in [cljsjs](http://cljsjs.github.io)

### Version
```
[onaio/slickgrid-cljs "0.0.4"]
```

## Dev

To re-package a slightly different bunch of slickgrid dependencies, do the following:

1. Install uglifyjs
```
npm install uglifyjs
```

2. Pull down SlickGrid from SlickGrid/master. This will be pulled into `src/SlickGrid`
```
git submodule init && git submodule update
```

3. Build a distribution
You can build a slickgrid-cljs distribution with or without dependencies and extras by running either of the following from the repository root:

```
make
```

```
make without-extras
```

4. `lein deploy clojars` when you are ready with it all.

Alternatively, you can add a new make target if you have different build requirements, and update the deps.clj correspondingly, by adding a new entry to the `:foreign-libs` list with appropriate values.


