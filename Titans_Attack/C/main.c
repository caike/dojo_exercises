/**
 * Titans are attacking. The Scout Regiment hasn't arrived as planned. The
 * "hour" argument represents the current hour of the day (0..23). Titans are
 * inactive at night. We're under attack if Titans are attacking and the hour
 * is before 20 or after 4. Determine if the Titans are attacking.
 *
 * Test Cases:
 *  is_under_attack(true, 19) -> true
 *  is_under_attack(true, 20) -> false
 *  is_under_attack(false, 19) -> false
 */

#include <stdio.h>
#include <stdbool.h>

void test(bool expected, bool actual);
bool is_under_attack(bool attacked, int hr);

int main(int argc, const char * argv[]) {
  test(true, is_under_attack(true, 19));
  test(false, is_under_attack(true, 20));
  test(false, is_under_attack(false, 19));

  test(true, is_under_attack(true, 5));
  test(false, is_under_attack(true, 4));
  test(false, is_under_attack(false, 5));

  return 0;
}

void test(bool expected, bool actual) {
  puts((expected == actual) ? "Pass" : "Fail");
}

bool is_under_attack(bool attacked, int hr) {
  return(attacked && (hr >= 5 && hr <= 19));
}
