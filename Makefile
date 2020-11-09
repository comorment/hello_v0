all: magma msigdb 
	
magma: magma_v1.08_static.zip magma_v1.08_static.zip dbsnp151.synonyms.zip g1000_eur.zip g1000_afr.zip g1000_eas.zip g1000_sas.zip g1000_amr.zip g1000_subpop.zip
msigdb: c2.all.v7.2.symbols.gmt c2.all.v7.2.entrez.gmt c5.go.bp.v7.2.symbols.gmt c5.go.bp.v7.2.entrez.gmt c5.go.cc.v7.2.symbols.gmt c5.go.cc.v7.2.entrez.gmt c5.go.mf.v7.2.symbols.gmt c5.go.mf.v7.2.entrez.gmt

# https://ctg.cncr.nl/software/magma
magma_v1.08_static.zip:
	wget https://ctg.cncr.nl/software/MAGMA/prog/$@
NCBI37.3.zip:
	wget https://ctg.cncr.nl/software/MAGMA/aux_files/$@
dbsnp151.synonyms.zip:
	wget https://ctg.cncr.nl/software/MAGMA/aux_files/$@
g1000_eur.zip:
	wget https://ctg.cncr.nl/software/MAGMA/ref_data/$@
g1000_afr.zip:
	wget https://ctg.cncr.nl/software/MAGMA/ref_data/$@
g1000_eas.zip:
	wget https://ctg.cncr.nl/software/MAGMA/ref_data/$@
g1000_sas.zip:
	wget https://ctg.cncr.nl/software/MAGMA/ref_data/$@
g1000_amr.zip:
	wget https://ctg.cncr.nl/software/MAGMA/ref_data/$@
g1000_subpop.zip:
	wget https://ctg.cncr.nl/software/MAGMA/ref_data/$@

c2.all.v7.2.symbols.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@
c2.all.v7.2.entrez.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@
c5.go.bp.v7.2.symbols.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@
c5.go.bp.v7.2.entrez.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@
c5.go.cc.v7.2.symbols.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@
c5.go.cc.v7.2.entrez.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@
c5.go.mf.v7.2.symbols.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@
c5.go.mf.v7.2.entrez.gmt:
	wget https://data.broadinstitute.org/gsea-msigdb/msigdb/release/7.2/$@


