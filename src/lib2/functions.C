#include "sampleClass.H"

namespace Foam {
    /// @brief Substract two sampleClass objects; delegates to `x` members
    /// @output-section authors:elwardi
    sampleClass operator-(sampleClass& a, sampleClass& b) {
        return sampleClass(a.x() - b.x());
    }
}
