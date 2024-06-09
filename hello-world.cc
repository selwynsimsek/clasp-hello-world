#include <fmt/format.h>
#include <clasp/clasp.h>

namespace hw {

void hello_world(double x, double y) { fmt::print("Hello World! Did you know that {} + {} = {}>?\n", x, y, x + y); }

void clasp_startup() {
  printf("Entered %s:%d:%s\n", __FILE__, __LINE__, __FUNCTION__);
  using namespace clbind;
  package_ s("hello-world", {}, {"COMMON-LISP"});
  s.def("hello-world", &hello_world, "(x y)"_ll, "Hello world that adds numbers."_docstring);
}

}; // namespace hw
