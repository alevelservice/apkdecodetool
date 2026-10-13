package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* compiled from: ViewOverlayApi18.java */
@RequiresApi(18)
/* loaded from: classes.dex */
class v implements w {

    /* renamed from: a, reason: collision with root package name */
    private final ViewOverlay f3002a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(@NonNull View view) {
        this.f3002a = view.getOverlay();
    }

    @Override // androidx.transition.w
    public void a(@NonNull Drawable drawable) {
        this.f3002a.add(drawable);
    }

    @Override // androidx.transition.w
    public void b(@NonNull Drawable drawable) {
        this.f3002a.remove(drawable);
    }
}
