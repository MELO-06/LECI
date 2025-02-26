duration = int(input("Call duration in second"))

if duration <= 60 :
    cost = 0.12
else :
    cost = 0.12 +  (duration - 60) * (0.12 / 60)

print("the cost will be", cost)