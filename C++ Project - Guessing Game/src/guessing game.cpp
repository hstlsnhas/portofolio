/* PROGRAM TEBAK-TEBAKAN */
#include <iostream> 
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <windows.h>	/*sleep*/
using namespace std;

int main ()
{
	/*DEKLARASI*/
	int pilih, hewan, makanan, M ;
	int angka, tebak_angka;
	string H;
	char main;

	do {
		system("cls");
		cout << "\t\t==================================================" << endl;
		cout << "\t\t|             KELAS MATEMATIKA C 2021            |" << endl; Sleep (250);
		cout << "\t\t|                   NIM 2102839                  |" << endl; Sleep (250);	
		cout << "\t\t|         HASTIALISNA HURUL AENI SETIAWAN        |" << endl; Sleep (250);
		cout << "\t\t|              PROGRAM TEBAK-TEBAKAN             |" << endl;
		cout << "\t\t|================================================|" << endl;
		Sleep (1000);
		
		srand (time(0));	/*inisialisasi seed rand, digunakan agar angka random diacak secara berbeda setiap run-nya*/
		
		cout << "\t\t|            KALI INI MAU BERMAIN APA?           |\n";
		cout << "\t\t|             [1] TEBAK NAMA HEWAN               |\n";
		cout << "\t\t|             [2] TEBAK MITOS/FAKTA MAKANAN      |\n";
		cout << "\t\t|             [3] TEBAK ANGKA RAHASIA            |\n";
		cout << "\t\t==================================================\n";
		
		cout << "\t\t                              PILIHANMU : "; cin >> pilih;
		
		switch (pilih) {
			case 1:	system ("cls");
					cout << endl;
					cout << "\t\t==================================================" << endl;
					cout << "\t\t|     KAMU HANYA PUNYA 3 KESEMPATAN MENJAWAB     |\n";
					cout << "\t\t|               SELAMAT BERMAIN!                 |\n";
					cout << "\t\t|                                                |\n";
					Sleep (1000);
					hewan = rand () % 12;				//range hewan dari 0-11;
			
					if (hewan==0) {			/*HARIMAU*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t| BERKAKI EMPAT - PEMAKAN DAGING, HEWAN APA ITU? |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
				
						if (H!="Harimau" && H!="HARIMAU" && H!="harimau") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|    TUBUH BERCORAK BELANG - HABITAT HUTAN       |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
					
							if (H!="Harimau" && H!="HARIMAU" && H!="harimau") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF H                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Harimau" && H!="HARIMAU" && H!="harimau") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|            JAWABANNYA ADALAH HARIMAU           |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|      YAP JAWABANNYA ADALAH HARIMAU! HEBAT!     |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|      YAP JAWABANNYA ADALAH HARIMAU! HEBAT!     |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|      YAP JAWABANNYA ADALAH HARIMAU! HEBAT!     |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}
					else if (hewan==1) {     /*PAUS*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|          MAMALIA LAUT, HEWAN APA ITU?          |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Paus" && H!="PAUS" && H!="paus") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|   UKURAN TUBUH BESAR - SERINGKALI TERDAMPAR    |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Paus" && H!="PAUS" && H!="paus") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF P                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Paus" && H!="PAUS" && H!="paus") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|             JAWABANNYA ADALAH PAUS             |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|       YAP JAWABANNYA ADALAH PAUS! HEBAT!       |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|       YAP JAWABANNYA ADALAH PAUS! HEBAT!       |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|       YAP JAWABANNYA ADALAH PAUS! HEBAT!       |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}						
					}
					else if (hewan==2) {  /*KELINCI*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|    WORTEL MAKANAN FAVORITNYA, HEWAN APA ITU?   |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Kelinci" && H!="KELINCI" && H!="kelinci") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|   BISA DIJADIKAN SATE - MEMILIKI EMPAT KAKI    |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Kelinci" && H!="KELINCI" && H!="kelinci") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF K                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Kelinci" && H!="KELINCI" && H!="kelinci") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|            JAWABANNYA ADALAH KELINCI           |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|     YAP JAWABANNYA ADALAH KELINCI! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|      YAP JAWABANNYA ADALAH KELINCI! HEBAT!     |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|      YAP JAWABANNYA ADALAH KELINCI! HEBAT!     |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}			
					}
					else if (hewan==3) {	/*ELANG*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|  UNGGAS - MEMILIKI MATA TAJAM, HEWAN APA ITU?  |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Elang" && H!="ELANG" && H!="elang") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|      PEMAKAN DAGING - MEMILIKI KAKI KUAT       |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Elang" && H!="ELANG" && H!="elang") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF E                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Elang" && H!="ELANG" && H!="elang") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|            JAWABANNYA ADALAH HARIMAU           |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|       YAP JAWABANNYA ADALAH ELANG! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|       YAP JAWABANNYA ADALAH ELANG! HEBAT!      |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|       YAP JAWABANNYA ADALAH ELANG! HEBAT!      |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
			
					}
					else if (hewan==4) {	/*BUAYA*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|      KARNIVORA - BERTELUR, HEWAN APA ITU?      |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Buaya" && H!="BUAYA" && H!="buaya") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|       REPTIL - BERNAPAS DENGAN PARU-PARU       |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Buaya" && H!="BUAYA" && H!="buaya") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|         BERAWALAN HURUF B - LIMA HURUF         |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Buaya" && H!="BUAYA" && H!="buaya") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|             JAWABANNYA ADALAH BUAYA            |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|       YAP JAWABANNYA ADALAH BUAYA! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|       YAP JAWABANNYA ADALAH BUAYA! HEBAT!      |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|       YAP JAWABANNYA ADALAH BUAYA! HEBAT!      |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}
					else if (hewan==5) {	/*KUCING*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|   BERKAKI EMPAT - ENAM HURUF, HEWAN APA ITU?   |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Kucing" && H!="KUCING" && H!="kucing") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|            MITOS: MEMILIKI 9 NYAWA             |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Kucing" && H!="KUCING" && H!="kucing") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|          BERAWALAN HURUF K - MENYUSUI          |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Kucing" && H!="KUCING" && H!="kucing") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|            JAWABANNYA ADALAH KUCING            |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|      YAP JAWABANNYA ADALAH KUCING! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|      YAP JAWABANNYA ADALAH KUCING! HEBAT!      |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|      YAP JAWABANNYA ADALAH KUCING! HEBAT!      |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}		
					else if (hewan==6) {	/*LEBAH*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|    SERANGGA - MEMILIKI SAYAP, HEWAN APA ITU?   |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Lebah" && H!="LEBAH" && H!="lebah") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|             BISA MENGHASILKAN MADU             |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Lebah" && H!="LEBAH" && H!="lebah") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF L                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Lebah" && H!="LEBAH" && H!="lebah") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|             JAWABANNYA ADALAH LEBAH            |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|       YAP JAWABANNYA ADALAH LEBAH! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|       YAP JAWABANNYA ADALAH LEBAH! HEBAT!      |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|       YAP JAWABANNYA ADALAH LEBAH! HEBAT!      |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}		
					else if (hewan==7) {	/*SEMUT*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|  SERANGGA - TIDAK PUNYA SAYAP, HEWAN APA ITU?  |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Semut" && H!="SEMUT" && H!="semut") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|        JUMLAH KAKI 6 - HIDUP BERKOLONI         |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Semut" && H!="SEMUT" && H!="semut") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF S                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Semut" && H!="SEMUT" && H!="semut") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|             JAWABANNYA ADALAH SEMUT            |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|       YAP JAWABANNYA ADALAH SEMUT! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|       YAP JAWABANNYA ADALAH SEMUT! HEBAT!      |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|       YAP JAWABANNYA ADALAH SEMUT! HEBAT!      |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}
					else if (hewan==8) {	/*JERAPAH*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|       MAMALIA - HERBIVORA, HEWAN APA ITU?      |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Jerapah" && H!="JERAPAH" && H!="jerapah") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|          MEMILIKI LEHER YANG PANJANG           |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Jerapah" && H!="JERAPAH" && H!="jerapah") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF J                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Jerapah" && H!="JERAPAH" && H!="jerapah") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|            JAWABANNYA ADALAH JERAPAH           |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|     YAP JAWABANNYA ADALAH JERAPAH! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|     YAP JAWABANNYA ADALAH JERAPAH! HEBAT!      |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|     YAP JAWABANNYA ADALAH JERAPAH! HEBAT!      |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}
					else if (hewan==9) {	/*TIKUS*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|    MAMALIA KECIL YANG RAKUS, HEWAN APA ITU?    |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Tikus" && H!="TIKUS" && H!="tikus") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|          OMNIVORA - MEMILIKI 4 KAKI            |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Tikus" && H!="TIKUS" && H!="tikus") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|               BERAWALAN HURUF T                |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Tikus" && H!="TIKUS" && H!="tikus") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|             JAWABANNYA ADALAH TIKUS            |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|      YAP JAWABANNYA ADALAH TIKUS! HEBAT!       |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|      YAP JAWABANNYA ADALAH TIKUS! HEBAT!       |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|      YAP JAWABANNYA ADALAH TIKUS! HEBAT!       |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}
					else if (hewan==10) {	/*FLAMINGO*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|     BURUNG BERKAKI PANJANG, HEWAN APA ITU?     |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Flamingo" && H!="FLAMINGO" && H!="flamingo") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|    MEMILIKI BULU INDAH - LEHER BERLIKU-LIKU    |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Flamingo" && H!="FLAMINGO" && H!="flamingo") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|          BERAWALAN HURUF F - 8 HURUF           |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Flamingo" && H!="FLAMINGO" && H!="flamingo") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|           JAWABANNYA ADALAH FLAMINGO            |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|     YAP JAWABANNYA ADALAH FLAMINGO! HEBAT!     |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|     YAP JAWABANNYA ADALAH FLAMINGO! HEBAT!     |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|     YAP JAWABANNYA ADALAH FLAMINGO! HEBAT!     |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}
					else if (hewan==11) {	/*PANDA*/
						cout << "\t\t|               KESEMPATAN PERTAMA               |\n";
						cout << "\t\t|   MAMALIA PEMAKAN DAUN BAMBU, HEWAN APA ITU?   |\n";
						cout << "\t\t==================================================\n";
						cout << "\t\tITU ADALAH (jawaban tanpa spasi): "; cin >> H;
						
						if (H!="Panda" && H!="PANDA" && H!="panda") {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|         SALAH! INI KESEMPATAN KEDUAMU          |\n";
							cout << "\t\t|        MEMILIKI LINGKAR HITAM PADA MATA        |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\tHEWAN ITU ADALAH: "; cin >> H;
							
							if (H!="Panda" && H!="PANDA" && H!="panda") {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|           INI KESEMPATAN TERAKHIRMU!           |\n";
								cout << "\t\t|                BERAWALAN HURUF P               |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\tNAMA HEWAN TERSEBUT ADALAH: "; cin >> H;
								
								if (H!="Panda" && H!="PANDA" && H!="panda") {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|            SAYANG SEKALI KAMU GAGAL!           |\n";
									cout << "\t\t|           JAWABANNYA ADALAH FLAMINGO            |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
									
								}
								else {
									cout << endl;
									cout << "\t\t==================================================" << endl;
									cout << "\t\t|       YAP JAWABANNYA ADALAH PANDA! HEBAT!      |\n";
									cout << "\t\t==================================================" << endl;
									cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								}
							}
							else {
								cout << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|       YAP JAWABANNYA ADALAH PANDA! HEBAT!      |\n";
								cout << "\t\t==================================================" << endl;
								cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
						}
						else {
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|       YAP JAWABANNYA ADALAH PANDA! HEBAT!      |\n";
							cout << "\t\t==================================================" << endl;
							cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						}
					}
			break;		
					
			case 2: makanan = rand () % 9;
					if (makanan==0) {  //DODOL//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|          DODOL MAKANAN KHAS DARI GARUT         |\n";
							cout << "\t\t|               (1) MITOS (2) FAKTA              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|  FAKTANYA DODOL MERUPAKAN MAKANAN KHAS GARUT   |" << endl;
								cout << "\t\t|================================================|" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|  FAKTANYA DODOL MERUPAKAN MAKANAN KHAS GARUT   |" << endl;
								cout << "\t\t|================================================|" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t|================================================|" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}
					else if (makanan==1) {  //PEMPEK//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|         BAHAN DASAR PEMPEK ADALAH AYAM         |\n";
							cout << "\t\t|               (1) MITOS (2) FAKTA              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|  FAKTANYA PEMPEK DIBUAT DARI BAHAN DASAR IKAN  |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|  FAKTANYA PEMPEK DIBUAT DARI BAHAN DASAR IKAN  |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}
					else if (makanan==2) {  //BIKA AMBON//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|          BIKA AMBON MAKANAN KHAS AMBON         |\n";
							cout << "\t\t|               (1) MITOS (2) FAKTA              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|     FAKTANYA BIKA AMBON MAKANAN KHAS MEDAN     |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|     FAKTANYA BIKA AMBON MAKANAN KHAS MEDAN     |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}	
					else if (makanan==3) {  //SERABI/SURABI//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|    SERABI/SURABI TERBUAT DARI TEPUNG BERAS     |\n";
							cout << "\t\t|               (1) MITOS (2) FAKTA              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|      SERABI/SURABI MAKANAN KHAS JAWA BARAT     |" << endl;	
								cout << "\t\t|         YANG TERBUAT DARI TEPUNG BERAS         |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              HEBAT!! KAMU BENAR!!              |" << endl;
								cout << "\t\t|      SERABI/SURABI MAKANAN KHAS JAWA BARAT     |" << endl;	
								cout << "\t\t|         YANG TERBUAT DARI TEPUNG BERAS         |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}	
					else if (makanan==4) {  //PAPEDA//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t| PAPEDA MAKANAN POKOK MASYARAKAT MALUKU & PAPUA |\n";
							cout << "\t\t|               (1) MITOS (2) FAKTA              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|   PAPEDA DIBUAT DARI TEPUNG SAGU DAN MENJADI   |" << endl;	
								cout << "\t\t|    MAKANAN POKOK MASYARAKAT MALUKU DAN PAPUA   |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              HEBAT!! KAMU BENAR!!              |" << endl;
								cout << "\t\t|   PAPEDA DIBUAT DARI TEPUNG SAGU DAN MENJADI   |" << endl;	
								cout << "\t\t|    MAKANAN POKOK MASYARAKAT MALUKU DAN PAPUA   |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}
					else if (makanan==5) {  //RENDANG//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|       RENDANG BERASAL DARI SUMATERA BARAT      |\n";
							cout << "\t\t|               (1) FAKTA (2) MITOS              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|   RENDANG MERUPAKAN MAKANAN DARI ORANG MINANG  |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|  RENDANG MERUPAKAN MAKANAN DARI SUMATERA BARAT |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}			
					else if (makanan==6) {  //TAPE//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|     TAPE/TAPAI SINGKONG DIBUAT DENGAN CARA     |\n";
							cout << "\t\t|                   DIFERMENTASI                 |\n";
							cout << "\t\t|               (1) FAKTA (2) MITOS              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|  SINGKONG DIFERMENTASI AKAN MENJADI TAPE/TAPAI |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|  SINGKONG DIFERMENTASI AKAN MENJADI TAPE/TAPAI |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}			
					else if (makanan==7) {  //KUE CUCUR//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|  BAHAN UTAMA KUE CUCUR ADALAH TEPUNG KANJI DAN |\n";
							cout << "\t\t|                   GULA MERAH                   |\n";
							cout << "\t\t|               (1) MITOS (2) FAKTA              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|  BAHAN UTAMA KUE CUCUR ADALAH TEPUNG BERAS DAN |" << endl;
								cout << "\t\t|                   GULA MERAH                   |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|  BAHAN UTAMA KUE CUCUR ADALAH TEPUNG BERAS DAN |" << endl;
								cout << "\t\t|                   GULA MERAH                   |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}	
					else if (makanan==8) {  //KUE PUTU//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|         KUE PUTU BERASAL DARI JAWA TIMUR       |\n";
							cout << "\t\t|               (1) FAKTA (2) MITOS              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|     KUE PUTU DICIPTAKAN SEKITAR TAHUN 1630     |" << endl;
								cout << "\t\t|         DI DESA WANAMARTA, JAWA TIMUR          |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;
								cout << "\t\t|     KUE PUTU DICIPTAKAN SEKITAR TAHUN 1630     |" << endl;
								cout << "\t\t|         DI DESA WANAMARTA, JAWA TIMUR          |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}			
					else if (makanan==9) {  //SEBLAK//
						do {
							system ("cls");
							cout << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t|              PILIH MITOS ATAU FAKTA!           |\n";
							cout << "\t\t| KESEMPATAN KAMU HANYA SEKALI, SELAMAT BERMAIN! |\n";
							cout << "\t\t|                                                |\n";
							Sleep (1000);
							cout << "\t\t|      REMPAH UTAMA UNTUK SEBLAK ADALAH JAHE     |\n";
							cout << "\t\t|               (1) FAKTA (2) MITOS              |\n";
							cout << "\t\t==================================================\n";
							cout << "\t\tJAWABAN: "; cin >> M;
						
							if (M==1) {
								cout << "\t\t==================================================" << endl;
								cout << "\t\t|              YAH JAWABANMU SALAH!              |" << endl;	
								cout << "\t\t|   FAKTANYA REMPAH UTAMA SEBLAK ADALAH KENCUR   |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
								
							}
							else if (M==2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|               HEBAT! KAMU BENAR!               |" << endl;
								cout << "\t\t|   FAKTANYA REMPAH UTAMA SEBLAK ADALAH KENCUR   |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << "\t\t            MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
							}
							else if (M!=1 && M!=2) {
								cout << "\t\t==================================================" << endl;	
								cout << "\t\t|     KAMU HANYA BOLEH MENGISI ANGKA 1 ATAU 2    |" << endl;
								cout << "\t\t==================================================" << endl;
								cout << endl;
								cout << "\t\t---------------MENGULANG PERTANYAAN---------------";
								Sleep (2000);
							}
						}
						while (M!=1 && M!=2);
					}			
			break;	
	{	
			case 3: system ("cls");
					angka = rand () % 15+1;	
					cout << endl;
					cout << "\t\t==================================================" << endl;
					cout << "\t\t|      AKU AKAN MEMILIH SATU ANGKA DARI 1-15     |\n"; Sleep (700);
					cout << "\t\t|      TUGASMU ADALAH MENEBAK ANGKA TERSEBUT     |\n";	Sleep (700);
					cout << "\t\t| BUKTIKAN KITA MEMILIKI CHEMISTRY YANG KUAT >.< |\n"; Sleep (700);
					cout << "\t\t|               SELAMAT MENEBAK!                 |\n"; 
					cout << "\t\t==================================================" << endl;
					Sleep (1000);			
					cout << "\t\t AKU SUDAH MEMILIH ANGKANYA! GILIRANMU MENEBAK:"; cin >> tebak_angka;
						
						do {
						if (angka>tebak_angka) {
							cout << endl;
							cout << "\t\t==================================================" << endl;	
							cout << "\t\t|         UPSS ANGKANYA MASIH NAIK LAGI!         |" << endl;
							cout << "\t\t==================================================" << endl;
							cout << "\t\t TEBAK LAGI (1-15) >.< : "; cin >> tebak_angka;
						}
						else if (angka<tebak_angka) {
							cout << endl;
							cout << "\t\t==================================================" << endl;	
							cout << "\t\t|         ANGKA RAHASIA LEBIH RENDAH!            |" << endl;
							cout << "\t\t|================================================|" << endl;
							cout << "\t\t TEBAK LAGI (1-15) >.< : "; cin >> tebak_angka;
						}
					}
						while (angka!=tebak_angka);
						
						cout << endl;
						cout << "\t\t==================================================" << endl;	
						cout << "\t\t|            KAMU BENAR! SELAMAT!!!              |" << endl;
						cout << "\t\t==================================================" << endl;
						cout << "\t\t           MASIH INGIN BERMAIN? (Y/T) "; cin >> main;
						
					
			break;		
	}
			default:cout << "\t\t==================================================" << endl;	
					cout << "\t\t|       TERJADI KESALAHAN. KEMBALI KE AWAL       |" << endl;
					cout << "\t\t==================================================" << endl;
					Sleep (1000);
					main='y';
			}
	}

		while(main=='y' || main=='Y');
		
		cout << "\n";
		cout << "\t\t==================================================" << endl;	
		cout << "\t\t|           TERIMA KASIH SUDAH BERMAIN!          |" << endl;
		cout << "\t\t|                  SAMPAI JUMPA! :)              |" << endl;
		cout << "\t\t==================================================" << endl;
		Sleep (500);
		
return 0;
}
