project "loguru"
   kind "StaticLib"
   language "C++"
   cppdialect "c++11"

   targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
   objdir("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

   files { "loguru.cpp", "loguru.hpp" }

   filter { "configurations:Debug" }
      defines { "DEBUG" }
      symbols "On"

   filter { "configurations:Release" } 
      defines { "NDEBUG" }
      optimize "On"