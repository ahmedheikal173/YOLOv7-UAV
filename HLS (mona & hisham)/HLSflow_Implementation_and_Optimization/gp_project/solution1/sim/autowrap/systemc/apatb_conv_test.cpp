// ==============================================================
// File generated on Thu Jun 06 02:25:11 +0200 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "image_r"
#define AUTOTB_TVIN_image_r  "../tv/cdatafile/c.conv_test.autotvin_image_r.dat"
// wrapc file define: "weights"
#define AUTOTB_TVIN_weights  "../tv/cdatafile/c.conv_test.autotvin_weights.dat"
// wrapc file define: "output_conv"
#define AUTOTB_TVIN_output_conv  "../tv/cdatafile/c.conv_test.autotvin_output_conv.dat"
#define AUTOTB_TVOUT_output_conv  "../tv/cdatafile/c.conv_test.autotvout_output_conv.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "output_conv"
#define AUTOTB_TVOUT_PC_output_conv  "../tv/rtldatafile/rtl.conv_test.autotvout_output_conv.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			image_r_depth = 0;
			weights_depth = 0;
			output_conv_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{image_r " << image_r_depth << "}\n";
			total_list << "{weights " << weights_depth << "}\n";
			total_list << "{output_conv " << output_conv_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int image_r_depth;
		int weights_depth;
		int output_conv_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void conv_test (
int image[320][320][1],
int weights[3][3][1][1],
int output_conv[320][320][1]);

void AESL_WRAP_conv_test (
int image[320][320][1],
int weights[3][3][1][1],
int output_conv[320][320][1])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "output_conv"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_conv, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_conv, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_conv, AESL_token); // data

			sc_bv<32> *output_conv_pc_buffer = new sc_bv<32>[102400];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_conv', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_conv', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					output_conv_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_conv, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_conv))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_conv
				{
					// bitslice(31, 0)
					// {
						// celement: output_conv(31, 0)
						// {
							sc_lv<32>* output_conv_lv0_0_319_1_lv1_0_319_1_lv2_0_0_1 = new sc_lv<32>[102400];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: output_conv(31, 0)
						{
							// carray: (0) => (319) @ (1)
							for (int i_0 = 0; i_0 <= 319; i_0 += 1)
							{
								// carray: (0) => (319) @ (1)
								for (int i_1 = 0; i_1 <= 319; i_1 += 1)
								{
									// carray: (0) => (0) @ (1)
									for (int i_2 = 0; i_2 <= 0; i_2 += 1)
									{
										if (&(output_conv[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											output_conv_lv0_0_319_1_lv1_0_319_1_lv2_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(output_conv_pc_buffer[hls_map_index].range(31, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: output_conv(31, 0)
						{
							// carray: (0) => (319) @ (1)
							for (int i_0 = 0; i_0 <= 319; i_0 += 1)
							{
								// carray: (0) => (319) @ (1)
								for (int i_1 = 0; i_1 <= 319; i_1 += 1)
								{
									// carray: (0) => (0) @ (1)
									for (int i_2 = 0; i_2 <= 0; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : output_conv[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : output_conv[0][0][0]
										// output_left_conversion : output_conv[i_0][i_1][i_2]
										// output_type_conversion : (output_conv_lv0_0_319_1_lv1_0_319_1_lv2_0_0_1[hls_map_index]).to_uint64()
										if (&(output_conv[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											output_conv[i_0][i_1][i_2] = (output_conv_lv0_0_319_1_lv1_0_319_1_lv2_0_0_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_conv_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "image_r"
		char* tvin_image_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_image_r);

		// "weights"
		char* tvin_weights = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_weights);

		// "output_conv"
		char* tvin_output_conv = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_output_conv);
		char* tvout_output_conv = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_conv);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_image_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_image_r, tvin_image_r);

		sc_bv<32>* image_r_tvin_wrapc_buffer = new sc_bv<32>[102400];

		// RTL Name: image_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: image(31, 0)
				{
					// carray: (0) => (319) @ (1)
					for (int i_0 = 0; i_0 <= 319; i_0 += 1)
					{
						// carray: (0) => (319) @ (1)
						for (int i_1 = 0; i_1 <= 319; i_1 += 1)
						{
							// carray: (0) => (0) @ (1)
							for (int i_2 = 0; i_2 <= 0; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : image[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : image[0][0][0]
								// regulate_c_name       : image
								// input_type_conversion : image[i_0][i_1][i_2]
								if (&(image[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<32> image_tmp_mem;
									image_tmp_mem = image[i_0][i_1][i_2];
									image_r_tvin_wrapc_buffer[hls_map_index].range(31, 0) = image_tmp_mem.range(31, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 102400; i++)
		{
			sprintf(tvin_image_r, "%s\n", (image_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_image_r, tvin_image_r);
		}

		tcl_file.set_num(102400, &tcl_file.image_r_depth);
		sprintf(tvin_image_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_image_r, tvin_image_r);

		// release memory allocation
		delete [] image_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_weights, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_weights, tvin_weights);

		sc_bv<32>* weights_tvin_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: weights
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: weights(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// carray: (0) => (0) @ (1)
							for (int i_2 = 0; i_2 <= 0; i_2 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_3 = 0; i_3 <= 0; i_3 += 1)
								{
									// sub                   : i_0 i_1 i_2 i_3
									// ori_name              : weights[i_0][i_1][i_2][i_3]
									// sub_1st_elem          : 0 0 0 0
									// ori_name_1st_elem     : weights[0][0][0][0]
									// regulate_c_name       : weights
									// input_type_conversion : weights[i_0][i_1][i_2][i_3]
									if (&(weights[0][0][0][0]) != NULL) // check the null address if the c port is array or others
									{
										sc_lv<32> weights_tmp_mem;
										weights_tmp_mem = weights[i_0][i_1][i_2][i_3];
										weights_tvin_wrapc_buffer[hls_map_index].range(31, 0) = weights_tmp_mem.range(31, 0);
                                 				       hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_weights, "%s\n", (weights_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_weights, tvin_weights);
		}

		tcl_file.set_num(9, &tcl_file.weights_depth);
		sprintf(tvin_weights, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_weights, tvin_weights);

		// release memory allocation
		delete [] weights_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_output_conv, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_output_conv, tvin_output_conv);

		sc_bv<32>* output_conv_tvin_wrapc_buffer = new sc_bv<32>[102400];

		// RTL Name: output_conv
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: output_conv(31, 0)
				{
					// carray: (0) => (319) @ (1)
					for (int i_0 = 0; i_0 <= 319; i_0 += 1)
					{
						// carray: (0) => (319) @ (1)
						for (int i_1 = 0; i_1 <= 319; i_1 += 1)
						{
							// carray: (0) => (0) @ (1)
							for (int i_2 = 0; i_2 <= 0; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : output_conv[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : output_conv[0][0][0]
								// regulate_c_name       : output_conv
								// input_type_conversion : output_conv[i_0][i_1][i_2]
								if (&(output_conv[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<32> output_conv_tmp_mem;
									output_conv_tmp_mem = output_conv[i_0][i_1][i_2];
									output_conv_tvin_wrapc_buffer[hls_map_index].range(31, 0) = output_conv_tmp_mem.range(31, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 102400; i++)
		{
			sprintf(tvin_output_conv, "%s\n", (output_conv_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_output_conv, tvin_output_conv);
		}

		tcl_file.set_num(102400, &tcl_file.output_conv_depth);
		sprintf(tvin_output_conv, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_output_conv, tvin_output_conv);

		// release memory allocation
		delete [] output_conv_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		conv_test(image, weights, output_conv);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_output_conv, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_conv, tvout_output_conv);

		sc_bv<32>* output_conv_tvout_wrapc_buffer = new sc_bv<32>[102400];

		// RTL Name: output_conv
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: output_conv(31, 0)
				{
					// carray: (0) => (319) @ (1)
					for (int i_0 = 0; i_0 <= 319; i_0 += 1)
					{
						// carray: (0) => (319) @ (1)
						for (int i_1 = 0; i_1 <= 319; i_1 += 1)
						{
							// carray: (0) => (0) @ (1)
							for (int i_2 = 0; i_2 <= 0; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : output_conv[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : output_conv[0][0][0]
								// regulate_c_name       : output_conv
								// input_type_conversion : output_conv[i_0][i_1][i_2]
								if (&(output_conv[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<32> output_conv_tmp_mem;
									output_conv_tmp_mem = output_conv[i_0][i_1][i_2];
									output_conv_tvout_wrapc_buffer[hls_map_index].range(31, 0) = output_conv_tmp_mem.range(31, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 102400; i++)
		{
			sprintf(tvout_output_conv, "%s\n", (output_conv_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_conv, tvout_output_conv);
		}

		tcl_file.set_num(102400, &tcl_file.output_conv_depth);
		sprintf(tvout_output_conv, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_conv, tvout_output_conv);

		// release memory allocation
		delete [] output_conv_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "image_r"
		delete [] tvin_image_r;
		// release memory allocation: "weights"
		delete [] tvin_weights;
		// release memory allocation: "output_conv"
		delete [] tvin_output_conv;
		delete [] tvout_output_conv;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

