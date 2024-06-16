#include <syslog.h>
#include <stdio.h>

int main(int argc, char ** argv){

	FILE * file;

	openlog(NULL, 0, LOG_USER);

	if(argc != 3){
	
		syslog(LOG_DEBUG, "Incorrect usage: ./writer <file> <string>.\nProgram expecting 3 arguments but found %d.\n", argc);

		return 1;

	}

	syslog(LOG_DEBUG, "Writing %s to %s.\n", argv[2], argv[1]);

	file = fopen(argv[1], "w");

	fprintf(file, "%s", argv[2]);

	fclose(file);

	return 0;

}
