package com.facebook.common.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* compiled from: Closeables.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    static final Logger f3529a = Logger.getLogger(b.class.getName());

    private b() {
    }

    public static void a(@Nullable Closeable closeable, boolean z) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e2) {
            if (z) {
                f3529a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e2);
                return;
            }
            throw e2;
        }
    }

    public static void a(@Nullable InputStream inputStream) {
        try {
            a(inputStream, true);
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
