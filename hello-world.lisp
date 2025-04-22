(cffi:load-foreign-library #+darwin "libhello-world.dylib"
                           #-darwin "libhello-world.so"
			   :search-path (asdf:system-relative-pathname 
					  :hello-world
					  #P"."))
