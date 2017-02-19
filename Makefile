ROOT=./

VERSION = 0.1.4
PROJECT_NAME = smokkfiskur
REPOSITORY_URL = https://github.com/lk-geimfari/smokkfiskur

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
	@echo "\033[92minstall     -- Install rebar3.\033[0m"
	@echo "\033[92mcompile     -- Compile apps .app.src and .erl files.\033[0m"
	@echo "\033[92mpublish     -- Publish a new version of your package and update the package.\033[0m"
	@echo "\033[93m::::::::::::::::::::::::::::::::::::::::::::::::::::::::\033[0m"


install:
	wget https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3

test:
	rebar3 eunit

release:
	rebar3 hex publish

compile:
	rebar3 compile

clean:
	rm --force --recursive _build/
	rm --force --recursive ebin/

.PHONY: install test release compile clean
