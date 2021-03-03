#include <ruby.h>

#define BUFFER_SIZE 1024*1024*1024

VALUE RailsCrasherModule = Qnil;
VALUE RailsCrasherClass = Qnil;

void Init_rails_crasher();

VALUE rails_crasher_say_hi(VALUE self) {
    VALUE r_hello = rb_str_new2("Hello!");
    return r_hello;
}

VALUE rails_crasher_crash(VALUE self) {
    uint8_t* encoded = malloc(BUFFER_SIZE);

    // do something dumb to keep this from getting compiled out
    for (size_t i = 0; i < BUFFER_SIZE; i++) {
        encoded[i] = i % 256;
    }

    for (size_t i = 0; i < BUFFER_SIZE; i++) {
        encoded[i] = encoded[(BUFFER_SIZE - 1 - i)/2] + (encoded[i]/4);
    }

    int sum = 0;
    for (size_t i = 0; i < BUFFER_SIZE; i++) {
        sum += encoded[i];
    }

    return INT2NUM(sum);
}

void Init_rails_crasher() {
    RailsCrasherModule = rb_define_module("RailsCrasher");
    rb_define_module_function(RailsCrasherModule, "say_hi", rails_crasher_say_hi, 0);
    rb_define_module_function(RailsCrasherModule, "crash", rails_crasher_crash, 0);
}
