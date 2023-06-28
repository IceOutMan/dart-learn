

var name = "zhangsan";

//  const can't change 
const CONST_NAME = "CONST_NAME";

// final can't change 
final final_name = "FINAL_NAME";

// dynamic type, not only can change value but type
// this only cant change to it's subType
dynamic dynamic_val = "this is dynamic val";

num my_num_float = 2.1;
num my_num_int = 2;
double my_double  = 3.1415926;
int my_int = 31415926;

void main(List<String> args) {
    print("==============");
    print("variable: "  + name);
    name = "this is zhangsan name";
    print("variable change to : " + name);

    print("==============");
    print("const name: " + CONST_NAME);
    print("const can't change ");

    print("==============");
    print("final name: " + final_name);
    print("final can't change ");

    print("==============");
    print("dynamic val : " + dynamic_val);

    print("============num==");
    print("num of float : ${my_num_float}, num of int : ${my_num_int}");
    print("double : ${my_double}, int : ${my_int}");



}

