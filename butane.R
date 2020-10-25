V=3.0 #L/mole
T=370. #K
a=16.44 #bar L^2/mole^2
b=0.07245 #L/mole
R=0.083145 #bar L/ K mole
P=(R*T/(V-b))-(a/((V**2)+(2*V*b)-(b**2)))   
cat("P-Robinson ",P,"\n")
