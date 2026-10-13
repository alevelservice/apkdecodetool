package io.reactivex.rxjava3.internal.util;

/* compiled from: ExceptionHelper.java */
/* loaded from: classes2.dex */
public final class a {

    /* compiled from: ExceptionHelper.java */
    /* renamed from: io.reactivex.rxjava3.internal.util.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0250a extends Throwable {
        private static final long serialVersionUID = -4649703670690200604L;

        C0250a() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    static {
        new C0250a();
    }

    public static RuntimeException a(Throwable th) {
        if (!(th instanceof Error)) {
            if (th instanceof RuntimeException) {
                return (RuntimeException) th;
            }
            return new RuntimeException(th);
        }
        throw ((Error) th);
    }

    public static String b(String str) {
        return str + " Null values are generally not allowed in 3.x operators and sources.";
    }

    public static NullPointerException a(String str) {
        return new NullPointerException(b(str));
    }

    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw a(str);
    }
}
