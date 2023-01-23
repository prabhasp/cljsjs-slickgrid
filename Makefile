with-extras: src/SlickGrid/lib/jquery-3.1.0.js \
    src/SlickGrid/lib/jquery.event.drag-2.3.0.js \
    src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
    src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js \
    src/SlickGrid-plugins/slick.autocolumnsize.js \
    src/SlickGrid-plugins/slick.rowselectionmodel.js
	mkdir -p src/build
	npx uglify-js src/SlickGrid/lib/jquery-3.1.0.js \
                src/SlickGrid/lib/jquery.event.drag-2.3.0.js \
                src/SlickGrid/slick.interactions.js \
                src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
                src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js \
                src/SlickGrid-plugins/slick.autocolumnsize.js \
                src/SlickGrid-plugins/slick.rowselectionmodel.js \
                -o src/build/slick.grid.with-extras.min.js

without-extras: src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
    src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js
	mkdir -p src/build
	npx uglify-js src/SlickGrid/lib/jquery-3.1.0.js \
                src/SlickGrid/lib/jquery.event.drag-2.3.0.js \
                src/SlickGrid/slick.interactions.js \
                src/SlickGrid/slick.core.js src/SlickGrid/slick.grid.js \
                src/SlickGrid/slick.dataview.js src/SlickGrid/controls/slick.pager.js \
                src/SlickGrid-plugins/slick.autocolumnsize.js \
                src/SlickGrid-plugins/slick.rowselectionmodel.js \
                -o src/build/slick.grid.without-extras.min.js
