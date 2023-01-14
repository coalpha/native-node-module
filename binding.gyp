{
   "targets": [{
      "target_name": "module",
      "sources": ["mod.c"],
      "conditions":[
         [
            "OS=='win'",
            {"cflags_cc": ["/O2", "/Ot", "/EHc", "/Wall", "/utf-8"]},
            {"cflags": ["-O2", "-Werror", "-Wextra", "-pedantic"]},
         ]
      ]
   }]
}
