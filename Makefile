doc:
	dart doc

publish:
	dart pub publish

test:
	dart test

test-example:
	nodemon -x 'dart test example/test/example_test.dart' -e 'dart'

test-watch:
	nodemon -x 'dart test' -e 'dart'

.PHONY: test doc