# HTML PDF Builder

A small shell script that uses `wkhtmltopdf` to build PDF documents from HTML5 documents. Especially suited for creating PDF presentations as a 1 to 1 copy of your HTML presentations. Obviously also useful for PDF screenshots of websites.

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