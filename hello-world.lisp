(cffi:load-foreign-library #+darwin "libhello-world.dylib"
                           #-darwin "libhello-world.so")
