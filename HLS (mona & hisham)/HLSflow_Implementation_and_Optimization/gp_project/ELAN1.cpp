#include "arch.h"

//Implementing ELAN1 as a block of cacasded blocks
//First 4 branches are concatenated and then CBS (k=3,s=1,p=1) is applied on output
//4 branches: first branch is an output of a CBS(k=3,s=1,p=1) applied on the input to the ELAN block
//Second branch is the output of 2 cascaded CBSs(k=3,s=1,p=1) which is applied on the input to the ELAN block
//THird branch is  the ouptut of a CBS(k=3,s=1,p=1)  that is applied  on the ouput of second branch
//Fourth branch is the output of 2 CBSs(k=3,s=1,p=1)  that is applied on the ouptut of third branch

void ELAN1(fptype image[widthELAN1][lengthELAN1][features_inputELAN1],
           fptype weights1[filtersize311][filtersize311][features_inputELAN1],
           fptype weights2[filtersize311][filtersize311][features_inputELAN1],
           fptype weights3[filtersize311][filtersize311][features_inputELAN1],
           fptype weights4[filtersize311][filtersize311][features_inputELAN1],
           fptype weights5[filtersize311][filtersize311][features_inputELAN1],
           fptype weights6[filtersize311][filtersize311][features_outputELAN1],
           fptype output[widthELAN1][lengthELAN1][features_outputELAN1])
{
    // Reuse memory efficiently
    fptype temp[widthELAN1][lengthELAN1][features_inputELAN1];

    // Perform CBSInput_ELAN1 operations
    CBSInput_ELAN1(image, weights1, temp);
    CBSInput_ELAN1(temp, weights2, temp);
    CBSInput_ELAN1(temp, weights3, temp);
    CBSInput_ELAN1(temp, weights4, temp);
    CBSInput_ELAN1(temp, weights5, temp);

    // Perform catELAN1 operation
    fptype output5[widthELAN1][lengthELAN1][features_numberELAN1] = {0};
    catELAN1(image, temp, temp, temp, output5);

    // Perform CBSELAN1 operation
    CBSELAN1(output5, weights6, output);
}
