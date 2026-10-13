package kotlin.jvm;

import org.jetbrains.annotations.Nullable;

/* compiled from: KotlinReflectionNotSupportedError.kt */
/* loaded from: classes2.dex */
public class b extends Error {
    public b() {
        super("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    public b(@Nullable String str) {
        super(str);
    }

    public b(@Nullable String str, @Nullable Throwable th) {
        super(str, th);
    }

    public b(@Nullable Throwable th) {
        super(th);
    }
}
