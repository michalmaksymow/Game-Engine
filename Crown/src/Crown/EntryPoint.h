#pragma once

#ifdef CR_PLATFORM_WINDOWS

extern Crown::Application* Crown::CreateApplication();

int main(int argc, char** argv)
{
	auto app = Crown::CreateApplication();
	app->Run();
	delete app;
}

#endif // CR_PLATFORM_WINDOWS