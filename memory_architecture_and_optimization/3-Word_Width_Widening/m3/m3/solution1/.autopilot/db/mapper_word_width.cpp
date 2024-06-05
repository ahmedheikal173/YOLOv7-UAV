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
extern "C" void word_width(char*, char*, char);
extern "C" void apatb_word_width_hw(volatile void * __xlx_apatb_param_x_in, volatile void * __xlx_apatb_param_y, char __xlx_apatb_param_load) {
  // Collect __xlx_x_in__tmp_vec
  vector<sc_bv<8> >__xlx_x_in__tmp_vec;
  for (int j = 0, e = 1228800; j != e; ++j) {
    __xlx_x_in__tmp_vec.push_back(((char*)__xlx_apatb_param_x_in)[j]);
  }
  int __xlx_size_param_x_in = 1228800;
  int __xlx_offset_param_x_in = 0;
  int __xlx_offset_byte_param_x_in = 0*1;
  char* __xlx_x_in__input_buffer= new char[__xlx_x_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_in__tmp_vec.size(); ++i) {
    __xlx_x_in__input_buffer[i] = __xlx_x_in__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_y__tmp_vec
  vector<sc_bv<8> >__xlx_y__tmp_vec;
  for (int j = 0, e = 409600; j != e; ++j) {
    __xlx_y__tmp_vec.push_back(((char*)__xlx_apatb_param_y)[j]);
  }
  int __xlx_size_param_y = 409600;
  int __xlx_offset_param_y = 0;
  int __xlx_offset_byte_param_y = 0*1;
  char* __xlx_y__input_buffer= new char[__xlx_y__tmp_vec.size()];
  for (int i = 0; i < __xlx_y__tmp_vec.size(); ++i) {
    __xlx_y__input_buffer[i] = __xlx_y__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  word_width(__xlx_x_in__input_buffer, __xlx_y__input_buffer, __xlx_apatb_param_load);
// print __xlx_apatb_param_x_in
  sc_bv<8>*__xlx_x_in_output_buffer = new sc_bv<8>[__xlx_size_param_x_in];
  for (int i = 0; i < __xlx_size_param_x_in; ++i) {
    __xlx_x_in_output_buffer[i] = __xlx_x_in__input_buffer[i+__xlx_offset_param_x_in];
  }
  for (int i = 0; i < __xlx_size_param_x_in; ++i) {
    ((char*)__xlx_apatb_param_x_in)[i] = __xlx_x_in_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_y
  sc_bv<8>*__xlx_y_output_buffer = new sc_bv<8>[__xlx_size_param_y];
  for (int i = 0; i < __xlx_size_param_y; ++i) {
    __xlx_y_output_buffer[i] = __xlx_y__input_buffer[i+__xlx_offset_param_y];
  }
  for (int i = 0; i < __xlx_size_param_y; ++i) {
    ((char*)__xlx_apatb_param_y)[i] = __xlx_y_output_buffer[i].to_uint();
  }
}
