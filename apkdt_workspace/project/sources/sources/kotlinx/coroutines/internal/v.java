package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: SystemProps.kt */
/* loaded from: classes2.dex */
final /* synthetic */ class v {

    /* renamed from: a, reason: collision with root package name */
    private static final int f20093a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f20093a;
    }

    @Nullable
    public static final String a(@NotNull String str) {
        kotlin.jvm.d.h.b(str, "propertyName");
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
