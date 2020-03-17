#pragma once

#ifdef CR_PLATFORM_WINDOWS

extern Crown::Application* Crown::CreateApplication();

int main(int argc, char** argv)
{
	Crown::Log::Init();
	CR_CORE_INFO("Initialized core logger!");
	CR_CLIENT_INFO("Initialized client logger!");

	auto app = Crown::CreateApplication();
	app->Run();
	delete app;
}

#endif // CR_PLATFORM_WINDOWS