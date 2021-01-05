
all: \
	EN13445-3_5.4-1.gif \
	EN13445-3_5.4-2.gif \
	EN13445-3_5.5-1.gif \
	EN13445-3_5.5-2.gif \
	EN13445-3_7.4-1.gif \
	EN13445-3_7.4-2.gif \
	EN13445-3_7.4-3.gif \
	EN13445-3_7.4-4.gif \
	EN13445-3_7.4-5.gif \
	EN13445-3_7.4-6.gif \
	EN13445-3_7.5-1.gif \
	EN13445-3_7.5-2.gif \
	EN13445-3_7.5-3.gif \
	EN13445-3_7.5-4.gif \
	EN13445-3_7.5-5.gif \
	EN13445-3_7.5-6.gif \
	EN13445-3_7.5-7.gif \
	EN13445-3_7.5-8.gif \
	EN13445-3_7.5-9.gif \
	EN13445-3_7.5-10.gif \
	EN13445-3_7.5-11.gif \
	EN13445-3_7.5-12.gif \
	EN13445-3_7.5-13.gif \
	EN13445-3_7.5-14.gif \
	EN13445-3_7.5-15.gif \
	EN13445-3_7.5-16.gif \
	EN13445-3_7.5-17.gif \
	parabola_length.gif \
	pythagoras.gif \
	nelma-cap_1.gif \
	nelma-cap_2.gif \
	nelma-cap_3.gif \
	nelma-cap_4.gif \
	nelma-cap_4-1.gif \
	nelma-cap_eq-1.gif \
	nelma-cap_eq-2.gif \
	nelma-cap_eq-3.gif

%.gif: %.tex
	./textogif -res 0.2 -dpi 300 $<

clean:
	rm *.gif *.aux *.log *.dvi *.ps

archive:
	tar -cvf - *.tex *.gif makefile | gzip -9 -c >formulas.tar.gz

extract:
	gzip -d -c <formulas.tar.gz | tar -xvf -

