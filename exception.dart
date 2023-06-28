


void main(List<String> args) {
  try {
    int a = 0;
    print(10 / a);
  } catch (e) {
    print(e);
    throw e;
  } finally {
    print("this is final");
  }
}
