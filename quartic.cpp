#include"./quartic.hpp"
int main(void)
{
  quartic<double> Q;
  pvector<double,5> c;
  pvector<complex<double>,4> r;
  //c << 16.048,-32.072,24.036,-8.006,1.0;
  //(1)*x^4+(-8.0060000000000002273736754432321)*x^3+(24.036010999999998460907590924762)*x^2+(-32.072044005999998717015841975808)*x+(16.048044011999998303963366197422) 
  c << 16.048044012,-32.072044006,24.036011,-8.006000000000000,1.0; 
  //c << 16.048044011999998303963366197422,-32.072044005999998717015841975808,24.036010999999998460907590924762,-8.0060000000000002273736754432321,1.0; 
  Q.set_coeff(c);
  Q.find_roots(r);
  r.show("roots");
  return 0;
}
