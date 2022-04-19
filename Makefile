.PHONY: build
build:
	for i in exe aot-snapshot jit-snapshot kernel ; do \
		docker run -v $(PWD):/app google/dart dart compile $$i /app/main.dart ; done

.PHONY: trance
trance:
	docker run -v $(PWD):/app google/dart dart compile js /app/main.dart -o /app/main.js

.PHONY: run
run:
	docker run -v $(PWD):/app google/dart dart run /app/main.dart

.PHONY: clean
clean:
	rm *.map *.deps *.js *.exe *.jit *.dill *.aot
