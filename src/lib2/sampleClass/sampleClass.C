#include "sampleClass.H"

namespace Foam {

/// Documentation and implementation defer for this function
/// It's supposed to return $R^{-2.5x}$ :scream:
double sampleClass::operator()() {
    return R;
}

sampleClass& sampleClass::operator++() {
    ++x_;
    return *this;
}

sampleClass sampleClass::operator-(int& n) {
    return sampleClass(x_ - n);
}

}
