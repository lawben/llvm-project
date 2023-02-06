typedef unsigned char uint8_t;
typedef unsigned short uint16_t;

using VecT __attribute__((vector_size(16))) = uint8_t;
using MaskT __attribute__((ext_vector_type(16))) = bool;

uint16_t shuffle_convert(VecT vec) {
  auto mask = __builtin_convertvector(vec, MaskT);
  return reinterpret_cast<uint16_t &>(mask);
}
