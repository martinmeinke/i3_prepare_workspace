#include <sys/ioctl.h>
#include <iostream>
#include <vector>
#include <string>

int main(int argc, char* argv[])
{
    std::vector<std::string> allArgs(argv, argv + argc); 
    
    char whitespace = ' ';
    for (int i = 1 ; i < allArgs.size(); i++)
    {
    	for (int c = 0; c < allArgs[i].length(); c++)
	{
            ioctl(0, TIOCSTI, &allArgs[i].at(c));
	}
	ioctl(0, TIOCSTI, &whitespace);
    }
    return 0;
}
