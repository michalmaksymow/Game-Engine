workspace "Crown"
 architecture "x64"
 configurations
 {
  "Debug",
  "Release",
  "Dist"
 }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Crown"
 location "Crown"
 kind "SharedLib"
 language "C++"

 targetdir ("bin/" .. outputdir .. "/%{prj.name}")
 objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

 files
 {
  "%{prj.name}/src/**.h",
  "%{prj.name}/src/**.cpp"
 }

 includedirs
 {
  "%{prj.name}/vendor/spdlog/include"
 }

 filter "system:windows"
  cppdialect "C++17"
  staticruntime "On"
  systemversion "latest"

 

  defines
  {
   "CR_PLATFORM_WINDOWS",
   "CR_BUILD_DLL"
  }

 filter "configurations:Debug"
  defines "CR_DEBUG"
  symbols "On"

 filter "configurations:Release"
  defines "CR_RELEASE"
  optimize "On"

 filter "configurations:Dist"
  defines "CR_DIST"
  optimize "On"

project "Sandbox"
 location "Sandbox"
 kind "ConsoleApp"
 language "C++"

 targetdir ("bin/" .. outputdir .. "/%{prj.name}")
 objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

 files
 {
  "%{prj.name}/src/**.h",
  "%{prj.name}/src/**.cpp"
 }

 includedirs
 {
  "Crown/vendor/spdlog/include",
  "Crown/src"
 }

 links
 {
  "Crown"
 }

 filter "system:windows"
  cppdialect "C++17"
  staticruntime "On"
  systemversion "latest"

  defines
  {
   "CR_PLATFORM_WINDOWS"
  }

 filter "configurations:Debug"
  defines "CR_DEBUG"
  symbols "On"

 filter "configurations:Release"
  defines "CR_RELEASE"
  optimize "On"

 filter "configurations:Dist"
  defines "CR_DIST"
  optimize "On"