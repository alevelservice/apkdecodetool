package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* compiled from: NestedScrollingParentHelper.java */
/* loaded from: classes.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    private int f1985a;

    /* renamed from: b, reason: collision with root package name */
    private int f1986b;

    public r(@NonNull ViewGroup viewGroup) {
    }

    public void a(@NonNull View view, @NonNull View view2, int i2) {
        a(view, view2, i2, 0);
    }

    public void a(@NonNull View view, @NonNull View view2, int i2, int i3) {
        if (i3 == 1) {
            this.f1986b = i2;
        } else {
            this.f1985a = i2;
        }
    }

    public int a() {
        return this.f1985a | this.f1986b;
    }

    public void a(@NonNull View view) {
        a(view, 0);
    }

    public void a(@NonNull View view, int i2) {
        if (i2 == 1) {
            this.f1986b = 0;
        } else {
            this.f1985a = 0;
        }
    }
}
