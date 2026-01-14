import random
LIMIT = 65536
def encode(data, passwd):
    outp = []
    if passwd == "":
        passy = []
        for i in range(random.randint(8,20)):
            passy.append(chr(random.randint(75,128)))
        passwd = "".join(passy)
        print(f'KEY: {passwd}')
    for i in range(len(data)):
        val = (ord(data[i]) + ord(passwd[i % len(passwd)])) % LIMIT
        outp.append(chr(val))
    return "".join(outp)
def decode(data, passwd):
    outp = []
    for i in range(len(data)):
        val = (ord(data[i]) - ord(passwd[i % len(passwd)])) % LIMIT
        outp.append(chr(val))
    return "".join(outp)
