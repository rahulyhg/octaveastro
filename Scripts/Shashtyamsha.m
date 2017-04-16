function y = Shastiyamsha(x)
# usage: Shastiyamsha (planet_position)
#
# This function calculates the shastiamsa of the planet
# given the CPlanetPosition Object

%Table of Every Amsa in 60 Amsas
shastiyamsha_table = {...
"Ghora","M";...
"Rakshasa","M";...
"Deva","B";...
"Kubera","B";...
"Yaksha","B";...
"Kinnara","B";...
"Bhrashta","M";...
"Kulaghna","M";...
"Garala","M";...
"Vahni","M";...
"Maya","M";...
"Purishaka","M";...
"Apampati","B";...
"Marutvaan","B";...
"Kaala","M";...
"Sarpa","M";...
"Amrit","B";...
"Indu","B";...
"Mridu","B";...
"Komala","B";...
"Heramba","B";...
"Brahma","B";...
"Vishnu","B";...
"Maheshwara","B";...
"Deva","B";...
"Ardra","B";...
"Kalinasa","B";...
"Kshiteesa","B";...
"Kamalakara","B";...
"Gulika","M";...
"Mrityu","M";...
"Kaala","M";...
"Davagni","M";...
"Ghora","M";...
"Yama","M";...
"Kantaka","M";...
"Suddha","B";...
"Amrita","B";...
"PurnaChandra","B";...
"Vishadagdha","M";...
"Kulant","M";...
"Vamshakshaya","M";...
"Utpata","M";...
"Kaala","M";...
"Saumya","B";...
"Komala","B";...
"Sheetala","B";...
"Karaladamshtra","M";...
"Candramukhi","B";...
"Praveena","B";...
"Kaalpavaka","M";...
"Dhandayudha","M";...
"Nirmala","B";...
"Saumya","B";...
"Krura","M";...
"Atisheetala","B";...
"Amrita","B";...
"Payodhi","B";...
"BhrahmaNa","M";...
"ChandraRekha","B"...
};

%Convert Kala, Vikala to Kala
total_vikala = x.kala * 60 + x.vikala;

%Every 30 Vikala will change the amsa to next one
%So Amsa number is total_vikalas/30

%If Rasi is odd then Table of Amsa is correct order
%If Rasi is even then Table of Amsa is in reverse order
if(mod(x.rasi,2) == 0)
  y = shastiyamsha_table{60 - floor(total_vikala/30),1};
else
  y = shastiyamsha_table{floor(total_vikala/30) + 1,1};
endif
endfunction