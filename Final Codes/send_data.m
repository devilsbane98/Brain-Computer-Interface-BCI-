function feat=send_data(x)
	switch(x)
		{
				case 'A':{ return 'A';
						break;}
	case 'B':{ return 'B';
				break;}
	case 'C':{ return 'C';
				break;}
	case 'D':{ return 'D';
				break;}
	case 'E':{ return 'E';
				break;}
	case 'F':{ return 'F';
				break;}
	case 'G':{ return 'G';
				break;}
	case 'H':{ return 'H';
				break;}
	case 'I':{ return 'I';
				break;}
	case 'J':{ return 'J';
				break;}
	case 'K':{ return 'K';
				break;}
	case 'L':{ return 'L';
				break;}
	case 'M':{ return 'M';
				break;}
	case 'N':{ return 'N';
				break;}
	case 'O':{ return 'O';
				break;}
	case 'P':{ return 'P';
				break;}
	case 'Q':{ return 'Q';
				break;}
	case 'R':{ return 'R';
				break;}
	case 'S':{ return 'S';
				break;}
	case 'T':{ return 'T';
				break;}
	case 'U':{ return 'U';
				break;}
	case 'V':{ return 'V';
				break;}
	case 'W':{ return 'W';
				break;}
	case 'X':{ return 'X';
				break;}
	case 'Y':{ return 'Y';
				break;}
	case 'Z':{ return 'Z';
				break;}
	}
	if (strcmp(x,"zero"))
		return '0';
	else if (strcmp(x,"one"))
		return '1';
	else if (strcmp(x,"two"))
		return '2';
	else if (strcmp(x,"three"))
		return '3';
	else if (strcmp(x,"four"))
		return '4';
	else if (strcmp(x,"five"))
		return '5';
	else if (strcmp(x,"six"))
		return '6';
	else if (strcmp(x,"seven"))
		return '7';
	else if (strcmp(x,"eight"))
		return '8';
	else if (strcmp(x,"nine"))
		return '9';
	else if(strcmp(x,"space"))
		return ' ';
	else if(strcmp(x,"comma"))
		return ',';
	else if(strcmp(x,"dot"))
		return '.';
}