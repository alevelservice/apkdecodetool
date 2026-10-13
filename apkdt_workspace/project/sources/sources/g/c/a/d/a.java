package g.c.a.d;

import io.reactivex.rxjava3.annotations.NonNull;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* compiled from: CompositeException.java */
/* loaded from: classes2.dex */
public final class a extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    /* compiled from: CompositeException.java */
    /* renamed from: g.c.a.d.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0215a extends RuntimeException {
        private static final long serialVersionUID = 3875212506787802066L;

        C0215a(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompositeException.java */
    /* loaded from: classes2.dex */
    public static abstract class b {
        b() {
        }

        abstract void a(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompositeException.java */
    /* loaded from: classes2.dex */
    public static final class c extends b {

        /* renamed from: a, reason: collision with root package name */
        private final PrintStream f18267a;

        c(PrintStream printStream) {
            this.f18267a = printStream;
        }

        @Override // g.c.a.d.a.b
        void a(Object obj) {
            this.f18267a.println(obj);
        }
    }

    /* compiled from: CompositeException.java */
    /* loaded from: classes2.dex */
    static final class d extends b {

        /* renamed from: a, reason: collision with root package name */
        private final PrintWriter f18268a;

        d(PrintWriter printWriter) {
            this.f18268a = printWriter;
        }

        @Override // g.c.a.d.a.b
        void a(Object obj) {
            this.f18268a.println(obj);
        }
    }

    public a(@NonNull Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void a(b bVar) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i2 = 1;
        for (Throwable th : this.exceptions) {
            sb.append("  ComposedException ");
            sb.append(i2);
            sb.append(" :\n");
            a(sb, th, "\t");
            i2++;
        }
        bVar.a(sb.toString());
    }

    @Override // java.lang.Throwable
    @NonNull
    public synchronized Throwable getCause() {
        int i2;
        if (this.cause == null) {
            String property = System.getProperty("line.separator");
            if (this.exceptions.size() > 1) {
                IdentityHashMap identityHashMap = new IdentityHashMap();
                StringBuilder sb = new StringBuilder();
                sb.append("Multiple exceptions (");
                sb.append(this.exceptions.size());
                sb.append(")");
                sb.append(property);
                for (Throwable th : this.exceptions) {
                    int i3 = 0;
                    while (true) {
                        if (th != null) {
                            for (int i4 = 0; i4 < i3; i4++) {
                                sb.append("  ");
                            }
                            sb.append("|-- ");
                            sb.append(th.getClass().getCanonicalName());
                            sb.append(": ");
                            String message = th.getMessage();
                            if (message != null && message.contains(property)) {
                                sb.append(property);
                                for (String str : message.split(property)) {
                                    for (int i5 = 0; i5 < i3 + 2; i5++) {
                                        sb.append("  ");
                                    }
                                    sb.append(str);
                                    sb.append(property);
                                }
                            } else {
                                sb.append(message);
                                sb.append(property);
                            }
                            int i6 = 0;
                            while (true) {
                                i2 = i3 + 2;
                                if (i6 >= i2) {
                                    break;
                                }
                                sb.append("  ");
                                i6++;
                            }
                            StackTraceElement[] stackTrace = th.getStackTrace();
                            if (stackTrace.length > 0) {
                                sb.append("at ");
                                sb.append(stackTrace[0]);
                                sb.append(property);
                            }
                            if (!identityHashMap.containsKey(th)) {
                                identityHashMap.put(th, true);
                                th = th.getCause();
                                i3++;
                            } else {
                                Throwable cause = th.getCause();
                                if (cause != null) {
                                    for (int i7 = 0; i7 < i2; i7++) {
                                        sb.append("  ");
                                    }
                                    sb.append("|-- ");
                                    sb.append("(cause not expanded again) ");
                                    sb.append(cause.getClass().getCanonicalName());
                                    sb.append(": ");
                                    sb.append(cause.getMessage());
                                    sb.append(property);
                                }
                            }
                        }
                    }
                }
                this.cause = new C0215a(sb.toString().trim());
            } else {
                this.cause = this.exceptions.get(0);
            }
        }
        return this.cause;
    }

    @NonNull
    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public int size() {
        return this.exceptions.size();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        a(new c(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        a(new d(printWriter));
    }

    public a(@NonNull Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof a) {
                    linkedHashSet.addAll(((a) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            this.exceptions = Collections.unmodifiableList(new ArrayList(linkedHashSet));
            this.message = this.exceptions.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    private void a(StringBuilder sb, Throwable th, String str) {
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }
}
