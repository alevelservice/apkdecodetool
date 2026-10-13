package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbzi extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private final pb f11087e;

    public zzbzi(Context context, @NonNull View view, @NonNull pb pbVar) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        this.f11087e = pbVar;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f11087e.a(motionEvent);
        return false;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            KeyEvent.Callback childAt = getChildAt(i3);
            if (childAt != null && (childAt instanceof fi)) {
                arrayList.add((fi) childAt);
            }
        }
        super.removeAllViews();
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((fi) obj).destroy();
        }
    }
}
