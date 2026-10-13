package e.i.b.b.b.b;

import java.io.PrintStream;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    static final i f17824a;

    static {
        i mVar;
        Integer num = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e2) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e2.printStackTrace(System.err);
            }
            if (num == null || num.intValue() < 19) {
                mVar = !Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ? new l() : new m();
            } else {
                mVar = new n();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = m.class.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            mVar = new m();
        }
        f17824a = mVar;
        if (num == null) {
            return;
        }
        num.intValue();
    }

    public static void a(Throwable th, Throwable th2) {
        f17824a.a(th, th2);
    }
}
