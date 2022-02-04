//
// testflap.c
//

static char onbss[128];

int main( )
{
	char onstack[128] ;
	int dummy ;

	dummy = onbss[128]; 	// off-by-one buf
	dummy = onstack[128];	// ditto.

	return 0 ;
} 


