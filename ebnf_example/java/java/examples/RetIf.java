// Curated subset: if / return / call (inspired by small v4 method bodies)
public class RetIf {
    public int f(int x) {
        if (x) return x;
        return 0;
    }
    public int g(int x) {
        while (x) x = x - 1;
        return x;
    }
}
