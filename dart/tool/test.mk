.PHONY: test, test_cov

test_cov: get
	@dart run coverage:test_with_coverage -fb -o coverage -- \
		--concurrency=6 --coverage=./coverage --reporter=expanded test/leetcode_test.dart

test:
	@dart run test/leetcode_test.dart