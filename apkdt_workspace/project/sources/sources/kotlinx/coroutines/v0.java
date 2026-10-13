package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class v0 implements b1 {

    /* renamed from: e, reason: collision with root package name */
    private final boolean f20144e;

    public v0(boolean z) {
        this.f20144e = z;
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public s1 a() {
        return null;
    }

    @Override // kotlinx.coroutines.b1
    public boolean i() {
        return this.f20144e;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(i() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
