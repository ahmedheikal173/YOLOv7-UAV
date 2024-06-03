#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void window_avg(char*, int, int);
extern "C" void apatb_window_avg_hw(volatile void * __xlx_apatb_param_din, volatile void * __xlx_apatb_param_dout) {
  // Collect __xlx_din_dout__tmp_vec
  vector<sc_bv<8> >__xlx_din_dout__tmp_vec;
  for (int j = 0, e = 1228800; j != e; ++j) {
    __xlx_din_dout__tmp_vec.push_back(((char*)__xlx_apatb_param_din)[j]);
  }
  int __xlx_size_param_din = 1228800;
  int __xlx_offset_param_din = 0;
  int __xlx_offset_byte_param_din = 0*1;
  for (int j = 0, e = 1228800; j != e; ++j) {
    __xlx_din_dout__tmp_vec.push_back(((char*)__xlx_apatb_param_dout)[j]);
  }
  int __xlx_size_param_dout = 1228800;
  int __xlx_offset_param_dout = 1228800;
  int __xlx_offset_byte_param_dout = 1228800*1;
  char* __xlx_din_dout__input_buffer= new char[__xlx_din_dout__tmp_vec.size()];
  for (int i = 0; i < __xlx_din_dout__tmp_vec.size(); ++i) {
    __xlx_din_dout__input_buffer[i] = __xlx_din_dout__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  window_avg(__xlx_din_dout__input_buffer, __xlx_offset_byte_param_din, __xlx_offset_byte_param_dout);
// print __xlx_apatb_param_din
  sc_bv<8>*__xlx_din_output_buffer = new sc_bv<8>[__xlx_size_param_din];
  for (int i = 0; i < __xlx_size_param_din; ++i) {
    __xlx_din_output_buffer[i] = __xlx_din_dout__input_buffer[i+__xlx_offset_param_din];
  }
  for (int i = 0; i < __xlx_size_param_din; ++i) {
    ((char*)__xlx_apatb_param_din)[i] = __xlx_din_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_dout
  sc_bv<8>*__xlx_dout_output_buffer = new sc_bv<8>[__xlx_size_param_dout];
  for (int i = 0; i < __xlx_size_param_dout; ++i) {
    __xlx_dout_output_buffer[i] = __xlx_din_dout__input_buffer[i+__xlx_offset_param_dout];
  }
  for (int i = 0; i < __xlx_size_param_dout; ++i) {
    ((char*)__xlx_apatb_param_dout)[i] = __xlx_dout_output_buffer[i].to_uint();
  }
}
