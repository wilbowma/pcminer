.PHONY: all

# Yeah I should have generated that but I didn't
all: 2000/lics2000-pc.html 2001/lics2001-pc.html 2002/lics2002-pc.html 2003/lics2003-pc.html 2004/lics2004-pc.html 2005/lics2005-pc.html 2006/lics2006-pc.html 2007/lics2007-pc.html 2008/lics2008-pc.html 2009/lics2009-pc.html 2010/lics2010-pc.html 2011/lics2011-pc.html 2012/lics2012-pc.html 2013/lics2013-pc.html 2014/lics2014-pc.html 2015/lics2015-pc.html 2016/lics2016-pc.html 2017/lics2017-pc.html 2018/lics2018-pc.html

lics-pc.html:
	curl -L https://lics.siglog.org/archive/pc.html -o lics-pc.html

lics%-pc.html: lics-pc.html
	racket -t lics-pc-scrape.rkt $*
