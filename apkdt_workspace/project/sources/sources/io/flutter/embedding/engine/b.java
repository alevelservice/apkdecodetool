package io.flutter.embedding.engine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FlutterEngineCache.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static b f19003b;

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, a> f19004a = new HashMap();

    @VisibleForTesting
    b() {
    }

    @NonNull
    public static b a() {
        if (f19003b == null) {
            f19003b = new b();
        }
        return f19003b;
    }

    public void b(@NonNull String str) {
        a(str, null);
    }

    @Nullable
    public a a(@NonNull String str) {
        return this.f19004a.get(str);
    }

    public void a(@NonNull String str, @Nullable a aVar) {
        if (aVar != null) {
            this.f19004a.put(str, aVar);
        } else {
            this.f19004a.remove(str);
        }
    }
}
