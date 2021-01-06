#!/bin/bash
rm -rf patch/dtbs/
rm -rf OUTPUT/
rm -rf patch/kernel/
mkdir patch/dtbs/
mkdir patch/kernel/
echo "Hello"
echo " "
echo "...copy dtb..."




echo "Chose ur freq"
echo " "
echo "List:"
echo "1) OC DDR BUS HMP"
echo "2) OC DDR BUS EAS"
echo "3) OC ddr bus && SCREEN 66Hz only tianma HMP"
echo "4) OC ddr bus && SCREEN 66Hz only tianma EAS"

read INPUT


if [ "$INPUT" = "1" ]; then

    echo "chose OC DDR BUS HMP"
    cp archive/OC_DDR/HMP/sdm660-mtp_f7a.dtb patch/dtbs/
    
elif [ "$INPUT" = "2" ]; then

    echo "chose OC DDR BUS EAS"
    cp archive/OC_DDR/EAS/sdm660-mtp_f7a.dtb patch/dtbs/

elif [ "$INPUT" = "3" ]; then

    echo "OC ddr bus && SCREEN 66Hz only tianma HMP"
    cp archive/OC_DDR_TIANMA/HMP/sdm660-mtp_f7a.dtb patch/dtbs/

elif [ "$INPUT" = "4" ]; then

    echo "OC ddr bus && SCREEN 66Hz only tianma EAS"
    cp archive/OC_DDR_TIANMA/EAS/sdm660-mtp_f7a.dtb patch/dtbs/
fi

echo "Copy Image.gz"
cp Image.gz patch/kernel/
mkdir OUTPUT/
cd patch/
zip -r9 KERNEL_MOD.zip * -x .git README.md *placeholder
mv KERNEL_MOD.zip ../OUTPUT/
