all: build

BUILD_INPATH = ./src
BUILD_FLAGS = -o:speed -out:./bin/mercury

STRESSTEST_INPATH = ./test/twomil.aphel
TEST_INPATH = ./test/test.aphel
TEST_FLAGS = -out:test/out.bin -debug -no-color # apparently make has trouble displaying ansi codes

build:
	@odin build $(BUILD_INPATH) $(BUILD_FLAGS)

test: build
	@./bin/mercury $(TEST_INPATH) $(TEST_FLAGS)

stresstest: build
	@./bin/mercury $(STRESSTEST_INPATH) $(TEST_FLAGS)