
namespace Foam {

/**
 * Test concept.
 */
template<class T>
concept UIElement = requires {
    { T::init() } -> std::convertible_to<bool>;
};

/// Global typedef using using. Not a typo :wave: :joy:
using coolType1 = int;

/// Global typedef using typedef. Also not a typo :wink:
typedef int coolType2;

/// An initialized constexpr
static constexpr int intConstExpr = 42;

}
