package com.example.native_webview;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;

/* compiled from: LoadingDialog.java */
/* loaded from: classes.dex */
public class c extends androidx.fragment.app.b {
    private com.example.native_webview.j.c p;

    public static c i() {
        c cVar = new c();
        cVar.a(1, 0);
        cVar.a(false);
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.p = (com.example.native_webview.j.c) androidx.databinding.g.a(layoutInflater, h.dialog_loading, viewGroup, false);
        return this.p.c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        e.f.f.b.a.e a2 = e.f.f.b.a.c.a().a(new Uri.Builder().scheme("res").path(String.valueOf(f.gif_loading)).build());
        a2.a(true);
        this.p.v.setController(a2.a());
    }
}
