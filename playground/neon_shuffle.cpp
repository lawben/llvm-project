typedef unsigned char uint8_t;

using VecT __attribute__((vector_size(16))) = uint8_t;

// #include <arm_neon.h>
//VecT shuffle_neon(VecT vec, VecT mask) {
//    return vqtbl1q_u8(vec, mask);
//}

VecT shuffle_builtin(VecT vec, VecT mask) {
    return __builtin_shufflevector(vec, mask);
}
