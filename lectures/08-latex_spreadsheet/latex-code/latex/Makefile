# Makefile to clean LaTeX temporary files (only in current directory)

# List of LaTeX temp file extensions to delete
TEMP_EXTENSIONS = aux bbl blg log  out synctex.gz fdb_latexmk pdf

.PHONY: clean

clean:
	@echo "Cleaning LaTeX temporary files in current directory..."
	@for ext in $(TEMP_EXTENSIONS); do \
		find . -maxdepth 1 -type f -name "*.$$ext" -exec rm -f {} \;; \
	done
	@echo "Done."

