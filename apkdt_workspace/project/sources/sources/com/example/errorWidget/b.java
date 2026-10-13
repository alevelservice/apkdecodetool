package com.example.errorWidget;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.example.errorWidget.DropDownBanner;

/* compiled from: ErrorView.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static DropDownBanner f3433a;

    private static void a(View view, String str) {
        DropDownBanner.c cVar = new DropDownBanner.c(view.getContext(), (ViewGroup) view);
        cVar.a(new LinearInterpolator());
        cVar.b(new AccelerateInterpolator());
        cVar.a(300);
        cVar.a(str);
        f3433a = cVar.a();
    }

    public static void b(View view, String str) {
        a();
        a(view, str);
        f3433a.show();
    }

    public static void a() {
        DropDownBanner dropDownBanner = f3433a;
        if (dropDownBanner != null) {
            dropDownBanner.hide();
        }
    }
}
