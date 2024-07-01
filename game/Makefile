#BSC = /home/bp/rescript-compiler-8.4.2/linux/bsc.exe
BSC = /mnt/chromeos/MyFiles/Console/usr/bin/bsc

rollmoon.js: rollmoon.ml canvas.cmi
	$(BSC) -w -27-26-44 -I . $< | sed -e 's!.*require.*!!g' | sed -e 's!export.*!!g' > $@

canvas.cmi: canvas.res
	$(BSC) $<

clean:
	$(RM) *.cm[ijt]

cleaner:
	$(RM) rollmoon.js
