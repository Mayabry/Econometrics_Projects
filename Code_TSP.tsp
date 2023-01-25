? MEMOIRE

LOAD(file='BD_PANEL_IMPORT&EXPORT_CIV.xls');
REGOPT(pvprint,stars) all;

genr lpib = log(pib);
genr ldm = log(dm);
genr lexport = log(export);
genr ltcr_fr = log(tcr_fr);
genr ltcr_usa = log(tcr_usa);
genr ltcr_fr_ppa = log(tcr_fr_ppa);
genr ltcr_usa_ppa = log(tcr_usa_ppa);

genr limport = log(import);

PANEL(all,id=products,time=year,byid) lexport ldm ltcr_fr; 
PANEL(all,id=products,time=year,byid) limport lpib ltcr_usa 
;																																																									
PRINT @fixed;
																									 								 												  
																			 										  
END;