#include "luna.h"
#include "lexer.h"
#include "dynarr.h"

typedef u8 param_type; enum {
    pt_reg,
    pt_int,
    pt_str,
    pt_char,
    pt_reference,
};

typedef struct param_s {
    union {
        u8    value_register;
        u64   value_integer;
        char* value_string;
        u32   value_char;
        u64   symbol;
    } as;
    u32 token;
    param_type type;
} param;