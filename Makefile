ROOT=./

VERSION = 0.1.0
PROJECT_NAME = nebula
REPOSITORY_URL = https://github.com/lk-geimfari/nebula

help:
	@echo "Project and maintainer:"
	@echo "\033[93m::::::::::::::::::::::::::::::::::::::::::::::::::::::::\033[0m"
	@echo "\033[92mAuthor:     Likid Geimfari <likid.geimfari@gmail.com>\033[0m"
	@echo "\033[92mPackage:    $(PROJECT_NAME) $(VERSION)\\033[0m"
	@echo "\033[92mRepository: $(REPOSITORY_URL)\033[0m"
	@echo "\033[92mLicense:    BSD-3-Clause\033[0m"
	@echo "\033[93m::::::::::::::::::::::::::::::::::::::::::::::::::::::::\033[0m"
	@echo ""
	@echo "Available options:"
	@echo "\033[93m::::::::::::::::::::::::::::::::::::::::::::::::::::::::\033[0m"
	@echo "\033[92mtest        -- Run EUnit Tests.\033[0m"
	@echo "\033[92mclean       -- Remove compiled beam files from apps.\033[0m"
	@echo "\033[92fmt          -- Format code.\033[0m"
	@echo "\033[92mcompile     -- Compile apps .app.src and .erl files.\033[0m"
	@echo "\033[92mrelease     -- Publish a new version of your package and update the package.\033[0m"
	@echo "\033[93m::::::::::::::::::::::::::::::::::::::::::::::::::::::::\033[0m"


test:
	rebar eunit

release:
	rebar3 hex publish

fmt:
	rebar3 fmt

compile:
	rebar compile

clean:
	rm --force --recursive _build/
	rm --force --recursive ebin/

.PHONY: test release compile clean
