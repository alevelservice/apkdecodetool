package kotlin.x;

import java.io.Closeable;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.c;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.Nullable;

/* compiled from: Closeable.kt */
@JvmName(name = "CloseableKt")
/* loaded from: classes2.dex */
public final class a {
    @SinceKotlin(version = "1.1")
    @PublishedApi
    public static final void a(@Nullable Closeable closeable, @Nullable Throwable th) {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            c.a(th, th2);
        }
    }
}
