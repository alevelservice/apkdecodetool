package e.f.c.j;

import com.facebook.common.internal.h;
import java.io.InputStream;

/* compiled from: StreamUtil.java */
/* loaded from: classes.dex */
public class d {
    public static long a(InputStream inputStream, long j2) {
        h.a(inputStream);
        h.a(j2 >= 0);
        long j3 = j2;
        while (j3 > 0) {
            long skip = inputStream.skip(j3);
            if (skip <= 0) {
                if (inputStream.read() == -1) {
                    return j2 - j3;
                }
                skip = 1;
            }
            j3 -= skip;
        }
        return j2;
    }
}
