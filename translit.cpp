/* 
 * (C) Copyright 2000 Diomidis Spinellis.
 * 
 * Permission to use, copy, and distribute this software and its
 * documentation for any purpose and without fee is hereby granted,
 * provided that the above copyright notice appear in all copies and that
 * both that copyright notice and this permission notice appear in
 * supporting documentation.
 * 
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
 * MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 * $Id: translit.cpp,v 1.1 2000/03/12 13:26:19 dds Exp $
 */

#include "filter.h"
#include "queue.h"
#include "translit.h"

void
translit::fillbuff()
{
	int c;

	switch (c = input->getcharacter()) {
	case (unsigned char)'�': nq('A'); break;
	case (unsigned char)'�': nq('A'); nq('\''); break;
	case (unsigned char)'�': nq('V'); break;
	case (unsigned char)'�': nq('G'); break;
	case (unsigned char)'�': nq('D'); break;
	case (unsigned char)'�': nq('E'); break;
	case (unsigned char)'�': nq('E'); nq('\''); break;
	case (unsigned char)'�': nq('Z'); break;
	case (unsigned char)'�': nq('I'); nq('_'); break;
	case (unsigned char)'�': nq('I'); nq('_'); nq('\''); break;
	case (unsigned char)'�': nq('T'); nq('H'); break;
	case (unsigned char)'�': nq('I'); break;
	case (unsigned char)'�': nq('I'); nq('\''); break;
	case (unsigned char)'�': nq('I'); nq('\''); nq('\''); break;
	case (unsigned char)'�': nq('K'); break;
	case (unsigned char)'�': nq('L'); break;
	case (unsigned char)'�': nq('M'); break;
	case (unsigned char)'�': nq('N'); break;
	case (unsigned char)'�': nq('X'); break;
	case (unsigned char)'�': nq('O'); break;
	case (unsigned char)'�': nq('O'); nq('\''); break;
	case (unsigned char)'�': nq('P'); break;
	case (unsigned char)'�': nq('R'); break;
	case (unsigned char)'�': nq('S'); break;
	case (unsigned char)'�': nq('T'); break;
	case (unsigned char)'�': nq('Y'); break;
	case (unsigned char)'�': nq('Y'); nq('_'); break;
	case (unsigned char)'�': nq('Y'); nq('_'); nq('\''); break;
	case (unsigned char)'�': nq('F'); break;
	case (unsigned char)'�': nq('C'); nq('H'); break;
	case (unsigned char)'�': nq('P'); nq('S'); break;
	case (unsigned char)'�': nq('O'); nq('_'); break;
	case (unsigned char)'�': nq('O'); nq('_'); nq('\''); break;
	case (unsigned char)'�': nq('a'); break;
	case (unsigned char)'�': nq('a'); nq('\''); break;
	case (unsigned char)'�': nq('v'); break;
	case (unsigned char)'�': nq('g'); break;
	case (unsigned char)'�': nq('d'); break;
	case (unsigned char)'�': nq('e'); break;
	case (unsigned char)'�': nq('e'); nq('\''); break;
	case (unsigned char)'�': nq('z'); break;
	case (unsigned char)'�': nq('i'); nq('_'); break;
	case (unsigned char)'�': nq('i'); nq('_'); nq('\''); break;
	case (unsigned char)'�': nq('t'); nq('h'); break;
	case (unsigned char)'�': nq('i'); break;
	case (unsigned char)'�': nq('i'); nq('\''); break;
	case (unsigned char)'�': nq('i'); nq('\''); nq('\''); break;
	case (unsigned char)'�': nq('i'); nq('\''); nq('\''); nq('\''); break;
	case (unsigned char)'�': nq('k'); break;
	case (unsigned char)'�': nq('l'); break;
	case (unsigned char)'�': nq('m'); break;
	case (unsigned char)'�': nq('n'); break;
	case (unsigned char)'�': nq('x'); break;
	case (unsigned char)'�': nq('o'); break;
	case (unsigned char)'�': nq('o'); nq('\''); break;
	case (unsigned char)'�': nq('p'); break;
	case (unsigned char)'�': nq('r'); break;
	case (unsigned char)'�': nq('s'); break;
	case (unsigned char)'�': nq('s'); break;
	case (unsigned char)'�': nq('t'); break;
	case (unsigned char)'�': nq('y'); break;
	case (unsigned char)'�': nq('y'); nq('\''); break;
	case (unsigned char)'�': nq('y'); nq('\''); nq('\''); break;
	case (unsigned char)'�': nq('y'); nq('\''); nq('\''); nq('\''); break;
	case (unsigned char)'�': nq('f'); break;
	case (unsigned char)'�': nq('c'); nq('h'); break;
	case (unsigned char)'�': nq('p'); nq('s'); break;
	case (unsigned char)'�': nq('o'); nq('_'); break;
	case (unsigned char)'�': nq('o'); nq('_'); nq('\''); break;
	case (unsigned char)';': nq('?'); break;
	default: nq(c); break;
	}
}
