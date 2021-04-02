#define NAPI_VERSION 3
#include <string.h>
#include <node_api.h>

#define test_string "you suffer."

napi_value init_all(napi_env const env, napi_value exports) {
   napi_status const res = napi_create_string_utf8(env, test_string, sizeof(test_string), &exports);
   if (res != napi_ok) {
      napi_throw_error(env, "EINVAL", "but why?");
      return NULL;
   }

   return exports;
}

NAPI_MODULE(native_node_module, init_all)
