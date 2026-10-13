package androidx.transition;

import android.view.View;
import android.view.WindowId;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* compiled from: WindowIdApi18.java */
@RequiresApi(18)
/* loaded from: classes.dex */
class d0 implements e0 {

    /* renamed from: a, reason: collision with root package name */
    private final WindowId f2968a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(@NonNull View view) {
        this.f2968a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof d0) && ((d0) obj).f2968a.equals(this.f2968a);
    }

    public int hashCode() {
        return this.f2968a.hashCode();
    }
}
