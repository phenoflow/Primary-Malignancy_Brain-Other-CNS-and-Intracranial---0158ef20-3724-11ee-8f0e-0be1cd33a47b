# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"B51..00","system":"readv2"},{"code":"B510300","system":"readv2"},{"code":"B510400","system":"readv2"},{"code":"B510500","system":"readv2"},{"code":"B511.00","system":"readv2"},{"code":"B512000","system":"readv2"},{"code":"B513.00","system":"readv2"},{"code":"B514.00","system":"readv2"},{"code":"B515000","system":"readv2"},{"code":"B516.00","system":"readv2"},{"code":"B517.00","system":"readv2"},{"code":"B517100","system":"readv2"},{"code":"B517200","system":"readv2"},{"code":"B517300","system":"readv2"},{"code":"B517z00","system":"readv2"},{"code":"B51y.00","system":"readv2"},{"code":"B51y000","system":"readv2"},{"code":"B51yz00","system":"readv2"},{"code":"B51z.00","system":"readv2"},{"code":"B520000","system":"readv2"},{"code":"B525.00","system":"readv2"},{"code":"B543.00","system":"readv2"},{"code":"B544.00","system":"readv2"},{"code":"B545000","system":"readv2"},{"code":"B545200","system":"readv2"},{"code":"ZV10y12","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_brain-other-cns-and-intracranial-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_brain-other-cns-and-intracranial-neoplasm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_brain-other-cns-and-intracranial-neoplasm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_brain-other-cns-and-intracranial-neoplasm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
