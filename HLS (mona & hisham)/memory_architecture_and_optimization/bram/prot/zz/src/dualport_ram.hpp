// cache read and write, and forced into different loop iterations or clock cycles
// => change the word width of the array mapped to memory

#ifndef __DUALPORT__
#define __DUALPORT__
#include "../include/ap_int.h"

// assume: array access consistently start on an even word boundary and then read
// the next sequential location which would be on an odd word boundary

// N: numbers of array elements
// W: word width
template <int N, int W>
class dualport_ram {
    // internal address
    int addr_int;
    // internal ram: width: W * 2, elements: N / 2 (assume N to be evenly divisable by two)
    ap_uint<W> ram[N];
    // single bit counter that is used to control reading and writing of data
    //ap_uint<1> cnt;
    // internal caching: width: W * 2
    ap_uint<W> read_data;
    ap_uint<W> write_data;

   public:
    dualport_ram (): addr_int(0), read_data(0), write_data(0) {
// #pragma HLS RESOURCE variable=ram core=RAM_1P_BRAM
#pragma HLS BIND_STORAGE variable=ram type=RAM_T2P impl=BRAM
    }
    // implement read/write method for the class (data_in => ram => return)
    
    
    ap_uint<W> exec(ap_uint<W> data_in, int addr, bool write) {
#pragma HLS INLINE
    	ap_uint<W> tmp;
        addr_int = addr;
        // manipulate write cache
        if (write) {
            if (cnt == 0) { // write to lower halves
            	write_data = (ap_uint<W>(write_data.range(W * 2 - 1, W)) << W) | data_in;
            }
            else { // write to upper halves
            	write_data = (ap_uint<W * 2>(data_in) << W) | ap_uint<W>(write_data.range(W - 1, 0));
            }
        }
        // control whether the internal array "ram" is read or written
        // addr_int >> 1 since number of elements is N / 2
        if (cnt == 0) {  //read on even
            read_data = ram[addr_int >> 1];
        }
        else {
            if (write) {
                ram[addr_int >> 1] = write_data;
            }
        }
        // read half of read cache
        if (cnt == 0) {
            tmp = read_data.range(W - 1, 0);
        }
        else {
            tmp = read_data.range(W * 2 - 1, W);
        }
        cnt++;
        return tmp;
    }
};

#endif

