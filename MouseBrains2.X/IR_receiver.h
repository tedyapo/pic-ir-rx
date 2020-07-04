// IR receiver states
typedef enum {STATE_RESET = 0,        // waiting for preamble sequence
              STATE_RECEIVING,        // receiving bit stream
              STATE_DONE}             // received; waiting to be processed
  rx_state_t;

// NEC IR code and associated rx state
typedef struct {
  uint8_t n_bits;
  rx_state_t state;
  union {
    uint32_t code;
    struct {
      // note: the order here is implementation-defined
      //       this struct is NOT portable between compilers
      uint8_t command_b;            
      uint8_t command;
      union {
        struct {
          uint8_t address_b;            
          uint8_t address;
        };
        struct {
          uint16_t extended_address;
        };
      };
    };
  };
} NEC_IR_code_t;

extern NEC_IR_code_t ir_code;

// timing stats for analysis/tuning
extern uint8_t stats[33];
extern uint16_t microamps;
extern uint16_t Vdd_mv;
extern uint16_t Vdac_mv;
//void setCurrent(microamps, Vdd_mv);




