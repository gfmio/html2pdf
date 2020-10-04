# HTML PDF Builder

A small shell script that uses `wkhtmltopdf` to build PDF documents from HTML5 documents. Especially suited for creating PDF presentations as a 1 to 1 copy of your HTML presentations. Obviously also useful for PDF screenshots of websites. It's better than a normal screenshot though, because the PDF contains all text and images as separate elements, which can be manipulated individually.

Presentation export is tested with reveal.js. You may want to use the reveal.js config to do customize the size of the presentation to fit the size of your example. The example pdf file (revealjs.pdf) was created using `./html2pdf.sh http://lab.hakim.se/reveal-js\?print-pdf revealjs.pdf 1280 768`.

## Usage

Currently mainly useful for playing around.

The program requires `wkhtmltopdf` to be available. Please check [http://wkhtmltopdf.org/](http://wkhtmltopdf.org/) for details.

In order to create a PDF at `OUTPUT_LOCATION` from a `SRC_LOCATION` at a resolution of `WIDTH` x `HEIGHT` per page, you just need to call

`./html2pdf.sh SRC_LOCATION OUTPUT_LOCATION WIDTH HEIGHT`

You can also leave out the dimensions and Full HD (1920x1080) resolution will be chosen.

`./html2pdf.sh SRC_LOCATION OUTPUT_LOCATION`

Note that due to the behaviour of `wkhtmltopdf`, the `SRC_LOCATION` can be the **full** file path or a URL.

You're welcome to fork your own version or provide additions & leave comments. You can also e-mail me at [me@gfm.io](mailto:me@gfm.io).

LICENSE: MIT

Copyright (C) 2015 Frédérique Mittelstaedt, gfm.io, me@gfm.io
