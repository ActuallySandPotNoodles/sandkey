import random
def encode(data, passwd):
    outp = []
    if passwd == "":
        passy = []
        for i in range(random.randint(8,20)):
            passy.append(chr(random.randint(75,128)))
        passwd = "".join(passy)
        print(f'KEY: {passwd}')
    for i in range(len(data)):
        outp.append(chr(ord(data[i])+ord(passwd[i % len(passwd)])))
    return "".join(outp)
def decode(data, passwd):
    outp = []
    for i in range(len(data)):
        outp.append(chr(ord(data[i])-ord(passwd[i % len(passwd)])))
    return "".join(outp)
