NOTE3	[��������������������������������Ÿǹɺϼվٿ]
NOTE4	[^��������������������������������Ÿǹɺϼվٿ]
GRLCASE	[���������������������������������]
GRUCASE	[�����Ÿ�ǹ�ɺ������ϼ����վ����ٿ]
NOGREEK	[^��������������������������������������Ÿ�ǹ�ɺ������ϼ����վ����ٿ]

%{
/* Redefine these values for stressed output */
	char stress_a = 'a';
	char stress_A = 'A';
	char stress_e = 'e';
	char stress_E = 'E';
	char stress_i = 'i';
	char stress_I = 'I';
	char stress_o = 'o';
	char stress_O = 'O';
	char stress_u = 'u';
	char stress_U = 'U';
	char stress_y = 'y';
	char stress_Y = 'Y';

	char diair_i = 'i';
	char diair_I = 'I';
	char diair_y = 'y';
	char diair_Y = 'Y';

#define YY_INPUT(buf,result,max_size) \
{ \
	int i; \
        if ( yy_current_buffer->yy_is_interactive ) \
                { \
                int c = '*', n; \
                for ( n = 0; n < max_size && \
                             (c = getc( yyin )) != EOF && c != '\n'; ++n ) \
                        buf[n] = (char) c; \
                if ( c == '\n' ) \
                        buf[n++] = (char) c; \
                if ( c == EOF && ferror( yyin ) ) \
                        YY_FATAL_ERROR( "input in flex scanner failed" ); \
                result = n; \
                } \
        else if ( ((result = fread( buf, 1, max_size, yyin )) == 0) \
                  && ferror( yyin ) ) \
                YY_FATAL_ERROR( "input in flex scanner failed" ); \
	for (i = 0; i < result; i++) \
		buf[i] = map[(unsigned char)buf[i]]; \
} \

#define yyterminate() return 
#define YY_DECL void lexi843(int *q, int *qlen)
#define nq(x) (q[*qlen] = (x), *qlen++)

%}


%%

�		{ nq('a'); return; }
�		{ nq(stress_a); return; }
�		{ nq('A'); return; }
�		{ nq(stress_A); return; }

��/{NOTE3}	{ nq('a'); nq('v'); return; }
��/{NOTE3}	{ nq('A'); nq('v'); return; }
��/{NOTE3}	{ nq('A'); nq('V'); return; }
��/{NOTE3}	{ nq('a'); nq('V'); return; }
��/{NOTE4}	{ nq('a'); nq('f'); return; }
��/{NOTE4}	{ nq('A'); nq('f'); return; }
��/{NOTE4}	{ nq('A'); nq('F'); return; }
��/{NOTE4}	{ nq('a'); nq('F'); return; }

��/{NOTE3}	{ nq(stress_a); nq('v'); return; /* Note 10 */ }
��/{NOTE3}	{ nq(stress_A); nq('v'); return; }
��/{NOTE3}	{ nq(stress_A); nq('V'); return; }
�/{NOTE3}	{ nq(stress_a); nq('V'); return; }
��/{NOTE4}	{ nq(stress_a); nq('f'); return; }
��/{NOTE4}	{ nq(stress_A); nq('f'); return; }
��/{NOTE4}	{ nq(stress_A); nq('F'); return; }
�/{NOTE4}	{ nq(stress_a); nq('f'); return; }

�		{ nq('b'); return; }
�		{ nq('B'); return; }

�		{ nq('g'); return; }
�		{ nq('G'); return; }

��		{ nq('n'); nq('g'); return; }
��		{ nq('n'); nq('G'); return; }
��		{ nq('N'); nq('g'); return; }
��		{ nq('N'); nq('G'); return; }

��		{ nq('n'); nq('x'); return; }
��		{ nq('n'); nq('X'); return; }
��		{ nq('N'); nq('x'); return; }
��		{ nq('N'); nq('X'); return; }

��		{ nq('n'); nq('c'); nq('h'); return; }
��		{ nq('n'); nq('C'); nq('H'); return; }
��		{ nq('N'); nq('c'); nq('h'); return; }
��		{ nq('N'); nq('C'); nq('H'); return; }

�		{ nq('d'); return; }
�		{ nq('D'); return; }

�		{ nq('e'); return; }
�		{ nq('E'); return; }
�		{ nq(stress_e); return; }
�		{ nq(stress_E); return; }

��/{NOTE3}	{ nq('e'); nq('v'); return; }
��/{NOTE3}	{ nq('E'); nq('v'); return; }
��/{NOTE3}	{ nq('E'); nq('V'); return; }
��/{NOTE3}	{ nq('e'); nq('V'); return; }
��/{NOTE4}	{ nq('e'); nq('f'); return; }
��/{NOTE4}	{ nq('E'); nq('f'); return; }
��/{NOTE4}	{ nq('E'); nq('F'); return; }
��/{NOTE4}	{ nq('e'); nq('F'); return; }

��/{NOTE3}	{ nq(stress_e); nq('v'); return; /* Note 10 */ }
��/{NOTE3}	{ nq(stress_E); nq('v'); return; }
ž/{NOTE3}	{ nq(stress_E); nq('V'); return; }
�/{NOTE3}	{ nq(stress_e); nq('V'); return; }
��/{NOTE4}	{ nq(stress_e); nq('f'); return; }
��/{NOTE4}	{ nq(stress_E); nq('f'); return; }
ž/{NOTE4}	{ nq(stress_E); nq('F'); return; }
�/{NOTE4}	{ nq(stress_e); nq('f'); return; }

�		{ nq('z'); return; }
�		{ nq('Z'); return; }

�		{ nq('i'); return; }
�		{ nq('I'); return; }
�		{ nq(stress_i); return; }
�		{ nq(stress_I); return; }

��/{NOTE3}	{ nq('i'); nq('v'); return; }
��/{NOTE3}	{ nq('E'); nq('v'); return; }
��/{NOTE3}	{ nq('E'); nq('V'); return; }
��/{NOTE3}	{ nq('i'); nq('V'); return; }
��/{NOTE4}	{ nq('i'); nq('f'); return; }
��/{NOTE4}	{ nq('E'); nq('f'); return; }
��/{NOTE4}	{ nq('E'); nq('F'); return; }
��/{NOTE4}	{ nq('i'); nq('F'); return; }

��/{NOTE3}	{ nq(stress_i); nq('v'); return; /* Note 10 */ }
��/{NOTE3}	{ nq(stress_I); nq('v'); return; }
Ǿ/{NOTE3}	{ nq(stress_I); nq('V'); return; }
�/{NOTE3}	{ nq(stress_i); nq('V'); return; }
��/{NOTE4}	{ nq(stress_i); nq('f'); return; }
��/{NOTE4}	{ nq(stress_I); nq('f'); return; }
Ǿ/{NOTE4}	{ nq(stress_I); nq('F'); return; }
�/{NOTE4}	{ nq(stress_i); nq('f'); return; }

�		{ nq('T'); nq('H'); return; }
�		{ nq('t'); nq('h'); return; }
�/{GRLCASE}	{ nq('T'); nq('h'); return; /* Note 11 */}

�		{ nq('i'); return; }
�		{ nq('I'); return; }
�		{ nq(stress_i); return; }
�		{ nq(stress_I); return; }
�		{ nq(diair_i); return; }
�		{ nq(diair_I); return; }

�		{ nq('k'); return; }
�		{ nq('K'); return; }

�		{ nq('l'); return; }
�		{ nq('L'); return; }

�		{ nq('m'); return; }
�		{ nq('M'); return; }

{NOGREEK}��	{ nq(*yytext); nq('b'); return; /* Note 5 */ }
{NOGREEK}��	{ nq(*yytext); nq('B'); return; }
{NOGREEK}��	{ nq(*yytext); nq('b'); return; }
{NOGREEK}��	{ nq(*yytext); nq('B'); return; }
^��		{ nq('b'); return; }
^��		{ nq('B'); return; }
^��		{ nq('b'); return; }
^��		{ nq('B'); return; }

��/{NOGREEK}	{ nq('b'); return; /* Note 7 */ }
��/{NOGREEK}	{ nq('B'); return; }
��/{NOGREEK}	{ nq('b'); return; }
��/{NOGREEK}	{ nq('B'); return; }

�		{ nq('n'); return; }
�		{ nq('N'); return; }

�		{ nq('X'); return; }
�		{ nq('x'); return; }


�		{ nq('o'); return; }
�		{ nq('O'); return; }
�		{ nq(stress_o); return; }
�		{ nq(stress_O); return; }

��		{ nq('o'); nq('u'); return; }
��		{ nq('O'); nq('u'); return; }
��		{ nq('o'); nq('U'); return; }
��		{ nq('O'); nq('U'); return; }

��		{ nq('o'); nq(stress_u); return; }
��		{ nq('O'); nq(stress_u); return; }
�		{ nq('o'); nq(stress_U); return; }
Ͼ		{ nq('O'); nq(stress_U); return; }

�		{ nq('p'); return; }
�		{ nq('P'); return; }

�		{ nq('r'); return; }
�		{ nq('R'); return; }

�		{ nq('s'); return; }
�		{ nq('s'); return; }
�		{ nq('S'); return; }

�		{ nq('t'); return; }
�		{ nq('T'); return; }

�		{ nq('y'); return; }
�		{ nq('Y'); return; }
�		{ nq(stress_y); return; }
�		{ nq(stress_Y); return; }

�		{ nq('f'); return; }
�		{ nq('F'); return; }

�		{ nq('c'); nq('h'); return; }
�		{ nq('C'); nq('H'); return; }
�/{GRLCASE}	{ nq('C'); nq('h'); return; /* Note 11 */}

�		{ nq('p'); nq('s'); return; }
�		{ nq('P'); nq('S'); return; }
�/{GRLCASE}	{ nq('P'); nq('s'); return; /* Note 11 */}

�		{ nq('o'); return; }
�		{ nq('O'); return; }
�		{ nq(stress_o); return; }
�		{ nq(stress_O); return; }

%%

main()
{
	yylex();
}

yywrap()
{
	return (1);
}