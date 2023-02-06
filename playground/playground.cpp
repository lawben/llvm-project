#include <iostream>
#include <bitset>

using VecT __attribute__((vector_size(16))) = uint8_t;
using MaskT __attribute__((ext_vector_type(16))) = bool;

uint16_t shuffle_convert(VecT vec);

int main() {
  VecT vec = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
  VecT vec2 = {0, 16, 2, 16, 4, 16, 6, 16, 8, 16, 10, 16, 12, 16, 14, 16};
  uint16_t mask = shuffle_convert(vec == vec2);
  std::cout << "mask: " << std::bitset<16>(mask) << std::endl;
}
