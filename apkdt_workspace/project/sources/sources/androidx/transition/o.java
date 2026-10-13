package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewGroupOverlayApi14.java */
/* loaded from: classes.dex */
public class o extends u implements q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a(ViewGroup viewGroup) {
        return (o) u.c(viewGroup);
    }

    @Override // androidx.transition.q
    public void b(@NonNull View view) {
        this.f2997a.b(view);
    }

    @Override // androidx.transition.q
    public void a(@NonNull View view) {
        this.f2997a.a(view);
    }
}
