package e.b.b.a.a.e;

/* compiled from: IntUtil.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static final char[] f17063a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '+', '/'};

    public static String a(long j2) {
        return a(j2, 6);
    }

    private static String a(long j2, int i2) {
        int pow = (int) Math.pow(2.0d, i2);
        char[] cArr = new char[pow];
        long j3 = (1 << i2) - 1;
        long j4 = j2;
        int i3 = pow;
        do {
            i3--;
            cArr[i3] = f17063a[(int) (j4 & j3)];
            j4 >>>= i2;
        } while (j4 != 0);
        return new String(cArr, i3, pow - i3);
    }
}
