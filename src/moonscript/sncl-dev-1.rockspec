package = "sncl"
version = "dev-1"

source = {
   url = "git://github.com/lucastercas/sncl-moonscript"
}

description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}

dependencies = {

}

build = {
   type = "builtin",
   modules = {
      ["sncl"] = "sncl/init.lua",
      ["sncl.media"] = "sncl/components/media.lua"
   },
   copy_directories = {
      "docs"
   },
   install = {
      bin = { "bin/sncl" }
   }
}
