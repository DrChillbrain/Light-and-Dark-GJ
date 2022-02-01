switch (keyboard_key)
		{
			case ord("P"):
				array_set(guess, i, 1);
				i++;
			break;
			case ord("A"):
				array_set(guess, i, 2);
				i++;
			break;
			case ord("S"):
				array_set(guess, i, 3);
				i++; 
			break;
			case ord("W"):
				array_set(guess, i, 4);
				i++;
			break;
			case ord("O"):
				array_set(guess, i, 5);
				i++;
			break;
			case ord("R"):
				array_set(guess, i, 6);
				i++;
			break;
			case ord("D"):
				array_set(guess, i, 7);
				i++;
			break;
			
			default:
				array_set(guess, i, 8);
				i++;
			break;
		}