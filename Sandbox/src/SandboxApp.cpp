#include "Crown.h"

class Sandbox : public Crown::Application
{ 
public:
	Sandbox()
	{

	}

	~Sandbox()
	{

	}
};

Crown::Application* Crown::CreateApplication()
{
	return new Sandbox();
}