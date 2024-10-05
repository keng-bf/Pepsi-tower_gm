/// @description approach(current, target, amount)
/// @param current
/// @param target
/// @param amount
function approach(current, target, amount) {
    if (current < target) {
        return min(current + amount, target);
    } else {
        return max(current - amount, target);
    }
}