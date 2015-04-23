## slickgrid-cljs
Bundling https://github.com/mleibman/SlickGrid as a jar.

I tried to do this using [cljsjs and boot](https://github.com/cljsjs/packages/wiki/Creating-Packages), but failed, and fell back to using [uglify.js](http://lisperator.net/uglifyjs/) and straight up `deps.cljs`.
I have used the namespace `cljsjs.slickgrid` as what the installation "provides", because I hope eventually this ends up in [cljsjs](http://cljsjs.github.io)

To re-package a slightly different bunch of slickgrid dependencies, do the following:

1. Install uglifyjs
```
npm install uglifyjs
```

2. Pull down SlickGrid from SlickGrid/master. This will be pulled into `src/SlickGrid`
```
git submodule init && git submodule update
```

3. Minify the slickgrid js files you want into one file, something like:
```
cd src
uglifyjs SlickGrid/slick.core.js SlickGrid/slick.grid.js \
  SlickGrid/slick.dataview.js SlickGrid/controls/slick.pager.js \
  SlickGrid/lib/jquery-1.7.min.js SlickGrid/lib/jquery.event.drag-2.2.js \
  -o slick.core-grid-dataview-pager-jquery-jqdrag.min.js
```

4. Update `src/deps.cljs` to use the file you just created, and possibly `project.clj` with a package name that you can push to.

5. `lein deploy clojars` when you are ready with it all.


