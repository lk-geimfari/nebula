APPS = erts kernel stdlib
PLT = apps.plt

compile:
	@ rebar compile

test:
	@ rebar eunit

$(PLT):
	- dialyzer -q --build_plt --output_plt $(PLT) --apps $(APPS)

dialyze: $(PLT) compile
	@ echo "==> (dialyzer)"
	@ dialyzer --plt $(PLT) ebin -Wunmatched_returns

ci: compile test
	@ echo "==> (dialyzer)"
	@ test -s ~/.dialyzer_plt || echo \
      "  Run this first: 'dialyzer --build_plt --apps $(APPS)'"
	@ ! test -s ~/.dialyzer_plt || dialyzer ebin -Wunmatched_returns

clean:
	@ rebar clean

reset: clean
	@ rmdir ebin
	@ rm -f $(PLT)

.PHONY: compile test dialyze ci clean reset
