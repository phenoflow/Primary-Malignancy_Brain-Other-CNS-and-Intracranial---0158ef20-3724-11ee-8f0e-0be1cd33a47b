# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"BBbH.00","system":"readv2"},{"code":"BBbT.00","system":"readv2"},{"code":"BBbU.00","system":"readv2"},{"code":"BBbz.00","system":"readv2"},{"code":"BBc2.00","system":"readv2"},{"code":"BBd2.00","system":"readv2"},{"code":"BBdA.00","system":"readv2"},{"code":"100733.0","system":"med"},{"code":"101086.0","system":"med"},{"code":"103047.0","system":"med"},{"code":"103995.0","system":"med"},{"code":"10851.0","system":"med"},{"code":"109473.0","system":"med"},{"code":"15711.0","system":"med"},{"code":"18617.0","system":"med"},{"code":"19226.0","system":"med"},{"code":"23083.0","system":"med"},{"code":"27363.0","system":"med"},{"code":"27653.0","system":"med"},{"code":"27744.0","system":"med"},{"code":"27748.0","system":"med"},{"code":"27846.0","system":"med"},{"code":"28919.0","system":"med"},{"code":"30273.0","system":"med"},{"code":"31767.0","system":"med"},{"code":"34763.0","system":"med"},{"code":"37473.0","system":"med"},{"code":"39088.0","system":"med"},{"code":"39899.0","system":"med"},{"code":"41515.0","system":"med"},{"code":"41520.0","system":"med"},{"code":"42426.0","system":"med"},{"code":"42460.0","system":"med"},{"code":"44089.0","system":"med"},{"code":"45154.0","system":"med"},{"code":"45531.0","system":"med"},{"code":"46404.0","system":"med"},{"code":"46789.0","system":"med"},{"code":"46792.0","system":"med"},{"code":"46905.0","system":"med"},{"code":"47556.0","system":"med"},{"code":"47633.0","system":"med"},{"code":"47840.0","system":"med"},{"code":"48073.0","system":"med"},{"code":"48085.0","system":"med"},{"code":"49132.0","system":"med"},{"code":"49186.0","system":"med"},{"code":"49714.0","system":"med"},{"code":"49875.0","system":"med"},{"code":"50035.0","system":"med"},{"code":"50235.0","system":"med"},{"code":"51115.0","system":"med"},{"code":"51795.0","system":"med"},{"code":"52511.0","system":"med"},{"code":"53504.0","system":"med"},{"code":"54133.0","system":"med"},{"code":"57047.0","system":"med"},{"code":"58902.0","system":"med"},{"code":"59170.0","system":"med"},{"code":"59718.0","system":"med"},{"code":"59823.0","system":"med"},{"code":"61399.0","system":"med"},{"code":"61783.0","system":"med"},{"code":"62126.0","system":"med"},{"code":"63925.0","system":"med"},{"code":"64557.0","system":"med"},{"code":"64971.0","system":"med"},{"code":"65241.0","system":"med"},{"code":"65599.0","system":"med"},{"code":"65952.0","system":"med"},{"code":"66064.0","system":"med"},{"code":"67211.0","system":"med"},{"code":"67236.0","system":"med"},{"code":"67288.0","system":"med"},{"code":"67587.0","system":"med"},{"code":"68027.0","system":"med"},{"code":"68479.0","system":"med"},{"code":"68641.0","system":"med"},{"code":"70104.0","system":"med"},{"code":"70126.0","system":"med"},{"code":"70176.0","system":"med"},{"code":"70942.0","system":"med"},{"code":"71139.0","system":"med"},{"code":"8328.0","system":"med"},{"code":"8547.0","system":"med"},{"code":"8550.0","system":"med"},{"code":"91240.0","system":"med"},{"code":"93097.0","system":"med"},{"code":"93537.0","system":"med"},{"code":"9575.0","system":"med"},{"code":"9622.0","system":"med"},{"code":"96798.0","system":"med"},{"code":"98800.0","system":"med"},{"code":"99621.0","system":"med"},{"code":"99913.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_brain-other-cns-and-intracranial-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_brain-other-cns-and-intracranial---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_brain-other-cns-and-intracranial---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_brain-other-cns-and-intracranial---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
