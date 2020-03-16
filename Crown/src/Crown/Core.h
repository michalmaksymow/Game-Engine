#pragma once

#ifdef CR_PLATFORM_WINDOWS
	#ifdef CR_BUILD_DLL
		#define CROWN_API __declspec(dllexport)
	#else
		#define CROWN_API __declspec(dllimport)
	#endif // CR_BUILD_DLL
#else
	#error Crown only supports Windows
#endif // CR_PLATFORM_WINDOWS

