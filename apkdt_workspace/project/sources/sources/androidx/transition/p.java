package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* compiled from: ViewGroupOverlayApi18.java */
@RequiresApi(18)
/* loaded from: classes.dex */
class p implements q {

    /* renamed from: a, reason: collision with root package name */
    private final ViewGroupOverlay f2989a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(@NonNull ViewGroup viewGroup) {
        this.f2989a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.w
    public void a(@NonNull Drawable drawable) {
        this.f2989a.add(drawable);
    }

    @Override // androidx.transition.w
    public void b(@NonNull Drawable drawable) {
        this.f2989a.remove(drawable);
    }

    @Override // androidx.transition.q
    public void a(@NonNull View view) {
        this.f2989a.add(view);
    }

    @Override // androidx.transition.q
    public void b(@NonNull View view) {
        this.f2989a.remove(view);
    }
}
