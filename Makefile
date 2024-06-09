libhello-world.so : hello-world.cc
	clang++ --shared -olibhello-world.so -fPIC \
		-Wno-macro-redefined -Wno-deprecated-declarations -Wno-deprecated-register \
		-Wno-expansion-to-defined -Wno-return-type-c-linkage -Wno-invalid-offsetof \
		-Wno-#pragma-messages -Wno-inconsistent-missing-override -Wno-error=c++11-narrowing \
		-Wno-c++11-narrowing -Wno-deprecated-enum-enum-conversion \
		-Wno-deprecated-anon-enum-enum-conversion -std=c++20 -fno-omit-frame-pointer \
		-mno-omit-leaf-frame-pointer -fno-stack-protector -stdlib=libstdc++ \
		-Wno-vla-extension \
		-L../clasp/build/boehmprecise/lib \
		-I../clasp/include -I../clasp/build/boehmprecise \
		-I../clasp/build/boehmprecise/generated -I../clasp \
		hello-world.cc -lclasp -lfmt
