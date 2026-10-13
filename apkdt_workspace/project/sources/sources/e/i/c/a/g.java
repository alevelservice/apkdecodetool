package e.i.c.a;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MoreObjects.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class g {

    /* compiled from: MoreObjects.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final String f17988a;

        /* renamed from: b, reason: collision with root package name */
        private final a f17989b;

        /* renamed from: c, reason: collision with root package name */
        private a f17990c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f17991d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MoreObjects.java */
        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            @NullableDecl
            String f17992a;

            /* renamed from: b, reason: collision with root package name */
            @NullableDecl
            Object f17993b;

            /* renamed from: c, reason: collision with root package name */
            @NullableDecl
            a f17994c;

            private a() {
            }
        }

        private b b(@NullableDecl Object obj) {
            a().f17993b = obj;
            return this;
        }

        @CanIgnoreReturnValue
        public b a(String str, @NullableDecl Object obj) {
            b(str, obj);
            return this;
        }

        public String toString() {
            boolean z = this.f17991d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f17988a);
            sb.append('{');
            String str = "";
            for (a aVar = this.f17989b.f17994c; aVar != null; aVar = aVar.f17994c) {
                Object obj = aVar.f17993b;
                if (!z || obj != null) {
                    sb.append(str);
                    String str2 = aVar.f17992a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj != null && obj.getClass().isArray()) {
                        String deepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                    } else {
                        sb.append(obj);
                    }
                    str = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }

        private b(String str) {
            this.f17989b = new a();
            this.f17990c = this.f17989b;
            this.f17991d = false;
            j.a(str);
            this.f17988a = str;
        }

        @CanIgnoreReturnValue
        public b a(String str, int i2) {
            b(str, String.valueOf(i2));
            return this;
        }

        private b b(String str, @NullableDecl Object obj) {
            a a2 = a();
            a2.f17993b = obj;
            j.a(str);
            a2.f17992a = str;
            return this;
        }

        @CanIgnoreReturnValue
        public b a(@NullableDecl Object obj) {
            b(obj);
            return this;
        }

        private a a() {
            a aVar = new a();
            this.f17990c.f17994c = aVar;
            this.f17990c = aVar;
            return aVar;
        }
    }

    public static <T> T a(@NullableDecl T t, @NullableDecl T t2) {
        if (t != null) {
            return t;
        }
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static b a(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
