package androidx.core.view.f0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* compiled from: AccessibilityClickableSpanCompat.java */
/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: e, reason: collision with root package name */
    private final int f1956e;

    /* renamed from: f, reason: collision with root package name */
    private final d f1957f;

    /* renamed from: g, reason: collision with root package name */
    private final int f1958g;

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public a(int i2, d dVar, int i3) {
        this.f1956e = i2;
        this.f1957f = dVar;
        this.f1958g = i3;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f1956e);
        this.f1957f.a(this.f1958g, bundle);
    }
}
