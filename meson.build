project('hello-worl1d', 'cpp')

fmt = dependency('fmt')

clasp = declare_dependency(include_directories: include_directories('../clasp/include',
                                                                    '../clasp/build/boehmprecise',
		                                                                '../clasp/build/boehmprecise/generated',
                                                                    '../clasp'),
                           link_args: ['-L' + meson.current_source_dir() + '/../clasp/build/boehmprecise/lib',
                                       '-lclasp'])

shared_library('hello-world',
               'hello-world.cc',
                cpp_args: ['-Wno-macro-redefined',
                           '-Wno-deprecated-declarations',
                           '-Wno-deprecated-register',
                           '-Wno-expansion-to-defined',
                           '-Wno-return-type-c-linkage',
                           '-Wno-invalid-offsetof',
                           '-Wno-#pragma-messages',
                           '-Wno-inconsistent-missing-override',
                           '-Wno-error=c++11-narrowing',
                           '-Wno-c++11-narrowing',
                           '-Wno-deprecated-enum-enum-conversion',
                           '-Wno-deprecated-anon-enum-enum-conversion',
                           '-std=gnu++20',
                           '-fno-omit-frame-pointer',
                           '-mno-omit-leaf-frame-pointer',
                           '-fno-stack-protector',
                           '-Wno-vla-extension'],
               dependencies: [fmt,
                              clasp])
