package com.facebook.common.internal;

import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* compiled from: Objects.java */
/* loaded from: classes.dex */
public final class g {

    /* compiled from: Objects.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final String f3531a;

        /* renamed from: b, reason: collision with root package name */
        private a f3532b;

        /* renamed from: c, reason: collision with root package name */
        private a f3533c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f3534d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Objects.java */
        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            @Nullable
            String f3535a;

            /* renamed from: b, reason: collision with root package name */
            @Nullable
            Object f3536b;

            /* renamed from: c, reason: collision with root package name */
            a f3537c;

            private a() {
            }
        }

        private b b(String str, @Nullable Object obj) {
            a a2 = a();
            a2.f3536b = obj;
            h.a(str);
            a2.f3535a = str;
            return this;
        }

        public b a(String str, @Nullable Object obj) {
            b(str, obj);
            return this;
        }

        public String toString() {
            boolean z = this.f3534d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f3531a);
            sb.append('{');
            String str = "";
            for (a aVar = this.f3532b.f3537c; aVar != null; aVar = aVar.f3537c) {
                if (!z || aVar.f3536b != null) {
                    sb.append(str);
                    String str2 = aVar.f3535a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    sb.append(aVar.f3536b);
                    str = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }

        private b(String str) {
            this.f3532b = new a();
            this.f3533c = this.f3532b;
            this.f3534d = false;
            h.a(str);
            this.f3531a = str;
        }

        public b a(String str, boolean z) {
            b(str, String.valueOf(z));
            return this;
        }

        public b a(String str, int i2) {
            b(str, String.valueOf(i2));
            return this;
        }

        private a a() {
            a aVar = new a();
            this.f3533c.f3537c = aVar;
            this.f3533c = aVar;
            return aVar;
        }
    }

    @CheckReturnValue
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int a(@Nullable Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static b a(Object obj) {
        return new b(a(obj.getClass()));
    }

    private static String a(Class<?> cls) {
        String replaceAll = cls.getName().replaceAll("\\$[0-9]+", "\\$");
        int lastIndexOf = replaceAll.lastIndexOf(36);
        if (lastIndexOf == -1) {
            lastIndexOf = replaceAll.lastIndexOf(46);
        }
        return replaceAll.substring(lastIndexOf + 1);
    }
}
