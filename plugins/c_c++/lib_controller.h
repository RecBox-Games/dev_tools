#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <stdbool.h>

typedef struct c_string_vec {
  char **ptr;
  uint64_t len;
  uint64_t cap;
} c_string_vec;

typedef uint64_t Err;
static const Err SUCCESS = 0;
static const Err FAILURE = 1;

extern void free_strvec(c_string_vec vec);
extern Err clients_changed(bool * did_change);
extern Err get_client_handles(c_string_vec * client_handles);
extern Err send_message(char * client, char * msg);
extern Err get_messages(char * client, c_string_vec * messages);

// control pad check
#define CP_CHECK(x) do {                                                \
        uint64_t retval = (x);                                          \
        if (retval != 0) {                                              \
            fprintf(stderr, "controlpads error: %s returned %ld as %s:%d", \
                    #x, retval, __FILE__, __LINE__);                    \
        }                                                               \
    } while (0)
