with-extras: src/SlickGrid/lib/jquery-1.7.min.js \
    src/SlickGrid/lib/jquery.event.drag-2.2.js \
    src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
    src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js \
    src/SlickGrid-plugins/slick.autocolumnsize.js
	mkdir -p src/build
	uglifyjs src/SlickGrid/lib/jquery-1.7.min.js \
             src/SlickGrid/lib/jquery.event.drag-2.2.js \
             src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
             src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js \
             src/SlickGrid-plugins/slick.autocolumnsize.js \
             -o src/build/slick.grid.with-extras.min.js

without-extras: src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
    src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js
	mkdir -p src/build
	uglifyjs src/SlickGrid/lib/jquery-1.7.min.js \
             src/SlickGrid/lib/jquery.event.drag-2.2.js \
             src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
             src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js \
             src/SlickGrid-plugins/slick.autocolumnsize.js \
             -o src/build/slick.grid.without-extras.min.js
