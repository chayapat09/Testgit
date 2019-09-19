def f(L):
    d = {'a':0 , 'b' :1 , 'c':2 ,'d' :3}
    output = []
    for i in L:
        arr = [0,0,0,0]
        out = ''
        for idx in range(len(i)):
            if i[idx] in d.keys():
                if out == '+':
                    arr[d[i[idx]]] = 1
                elif out == '-':
                    arr[d[i[idx]]] = -1
                else:
                    arr[d[i[idx]]] = float(out)
                out = ''
            else:
                out += i[idx]
        output.append(arr)

    return output

x = ['4263.63a-246.63b+c', '-4263.63b-243.62a+d', '4247.88a-4257.27b+c', '-4247.88b-4257.27a+d', '247.91a-228.34b+c', '-247.91b-228.34a+d', '231.59a-4244.37b+c', '-231.59b-4244.37a+d']
s = str(f(x))
s = s.replace('], [','] ; [')
print(s)
