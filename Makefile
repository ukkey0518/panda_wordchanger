show:
	@echo "--- Make Commands ---"
	@echo "  setup"
	@echo "  sort-import"
	@echo "---------------------"

## --- ###

setup:
	fvm flutter clean
	fvm flutter pub get

sort-import:
	fvm flutter pub run import_sorter:main