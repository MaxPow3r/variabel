schema <- c("BT", "BT", "BT", "PPI", "PPI", "PPA","BT", "HEJ")
tabell <- c("BTbeslut", "BTbeslut", "bokfort", "bokfort", "brev", "bokfort", "BTbeslut", "tabell")
variabel <- c("ArendeId", "PersonSnr", "Belopp", "PersonSnr", "PGI", "RegLkNr", "BeslutstypSnr", "KommunSnr")
beskrivning <- c("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget lectus lacinia, tristique massa quis, volutpat lacus."
                 ," Det här är en beskrivning som beskriver den här variabeln."
                 ,"Den här texten förklarar en annan variabel "
                 ,"Den här texten förklarar en annan variabel"
                 ,"Här kan den som är intresserad läsa om en till variabel. Den här variabeln är jättekrånglig så den behöver en jättelång text för att förklara allt om den. Massa förklaring och kanske en formel och lite mer text och ännu mer text bara för att."
                 ,"Beskrivning "
                 , "vilken typ av beslut, se kodtabell BT.beslutstyp"
                 , "kommun sekvensnummer, se kodtabell HEJ.kommun")
data <- cbind(schema, tabell, variabel, beskrivning)
data <- as.data.frame(data)


setwd("/home/maxpow3r/Documents/R/Shiny")

saveRDS(data, "data.rds")

kommun <- c("vaxholm", "stockholm", "rättvik", "saknas")
KommunSnr <- c (1, 2, 3, 0)

HEJ.kommun <-cbind(kommun, kod)
HEJ.kommun <-as.data.frame(HEJ.kommun)

saveRDS (HEJ.kommun, "kommun.rds")

Beslutstyp <-  c("beslutad", "beräkningsavslag", "saknas")
BeslutstypSnr <- c(1, 2, 0)

BT.beslutstyp <- cbind(Beslutstyp, BeslutstypSnr)
BT.beslutstyp <- as.data.frame(BT.beslutstyp)

saveRDS (BT.beslutstyp, "beslutstyp.rds")

