(clasp-ffi:%load-extension-library "hello-world"
                                   #+darwin "libhello-world.dylib"
                                   #-darwin "libhello-world.so")
