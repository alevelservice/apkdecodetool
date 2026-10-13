package com.google.firebase.components;

/* compiled from: Preconditions.java */
/* loaded from: classes.dex */
public final class c0 {
    public static void a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void b(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }
}
