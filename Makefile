seasons.gbc: SeasonsDump.o
	wlalink -S linkfile $@
	@-md5sum -c seasons.md5

SeasonsDump.o: SeasonsDump.s Makefile
	wla-gb -o $@ $(CFLAGS) $<
