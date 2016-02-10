total<-read.table("~/Google Drive/sugar_brain_data/sugar_brain_foods_grouped.csv", header=T, sep=",")
total<-transform(total, fruit=FRU0100+FRU0300+FRU0400+FRU0500)##fruit

total<-transform(total, veggeies=VEG0100+VEG0200+VEG0300+VEG0600)##veggies

total <- transform(total, starchveggies = VEG0400 + VEG0450)##starch veg

total <- transform(total, fries = VEG0800)##fried

total <- transform(total, wholegrain = GRW0100+GRW0200+GRW0300+GRW0400+GRW0500+GRW0600+GRW0900)#NO SWEET CEREAL OR COOKIES AND CAKES whole grain

total<-transform(total, somewholegrain=GRS0100+GRS0200+GRS0300+GRS0400+GRS0500+GRS0600+GRS0900)#no cereal, cookies, cakes some whole grain

total<-transform(total, refinedgrain=GRR0100+GRR0200+GRR0300+GRR0400+GRR0500+GRR0600+GRR0900)##refined, no cereal, cookies, cakes

total<-transform(total, sweetcereal=GRW0700+GRS0700+GRR0700) ##sweet cereal

total<-transform(total, sweetbakedgoods=GRW0800+GRS0800+GRR0800)## sweet baked goods

total<-transform(total, snackbars=GRW1000+GRS1000+GRR1000) ##snack bars

total<-transform(total, popcorn=GRW1100+GRW1200)##popcorn

total<-transform(total, meat=MRF0100+MRF0200+MRF0300+MRL0300+MRF0400+MRL0400+MCF0200+MCL0200+MRF0500+MPF0100+MFF0100+MFL0100+MSL0100+MCF0100+MCL0100+MOF0100+FMC0200+MOF0300)##normal meat

total<-transform(total, friedmeat=MFF0200+MSF0100+MPF0200)##fried meat

total<-transform(total, nuts=MOF0500+MOF0600) ##nuts

total<-transform(total, fakemeat=MOF0700)## fake meat

total<-transform(total, milk=DMF0100+DMR0100+DML0100+DMN0100) #white milk

total<-transform(total, flavoredmilk=DMF0200+DMR0200+DML0200+DML0300) #sweet milk

total<-transform(total, cheese=DCF0100+DCR0100+DCL0100+DCN0100)## cheese

total<-transform(total, sweetyogurt=DYF0100+DYR0100+DYL0100)## sweetyogurt

total<-transform(total, yogurt=DYF0200+DYR0200+DYL0200+DYN0100)##plain yogurt

total<-transform(total, deserts=DOT0100+DOT0200+DOT0300+SWT0400+SWT0500+SWT0700+SWT0800+SWT0200+SWT0300+MSC0600)## deserts

total<-transform(total,cream=FCF0100+FCR0100+FCN0100)## cream

total<-transform(total, fats=FMF0100+FMR0100+FOF0100+FAF0100+FSF0100+FAR0100+FDF0100+FDR0100) ##fats

total<-transform(total, SSB=BVS0400+BVS0300+BVS0500+BVS0100+BVS0200+BVS0600) ##SSB

total<-transform(total, artSSB=BVA0400+BVU0300+BVA0300+BVA0500+BVU0400+BVA0100+BVA0200+BVU0200+BVA0600+BVU0500) ##artifical SSB

total<-transform(total, condiments=MSC0200+MSC0300+MSC0400) ##condiments

total<-transform(total, SSB_milk=BVS0400+BVS0300+BVS0500+BVS0100+BVS0200+BVS0600+DMF0200+DMR0200+DML0200+DML0300) ##SSB+sweet milk

write.table(total, "~/Google Drive/sugar_brain_data/sugar_brain_foods_clean.csv", row.names=F, sep=",")
