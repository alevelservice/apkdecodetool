package com.zoloz.webcontainer;

import android.view.View;
import com.zoloz.webcontainer.a.c;
import com.zoloz.webcontainer.j.a;

/* compiled from: WebCActivity.java */
/* loaded from: classes2.dex */
class o implements View.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ a f16753e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ WebCActivity f16754f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(WebCActivity webCActivity, a aVar) {
        this.f16754f = webCActivity;
        this.f16753e = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.zoloz.webcontainer.r.b bVar;
        com.zoloz.webcontainer.r.b bVar2;
        String str = this.f16753e == a.BTN_LEFT ? "indexLeftMenu" : "optionMenu";
        bVar = this.f16754f.f16686g;
        c a2 = bVar.a();
        bVar2 = this.f16754f.f16686g;
        a2.b(bVar2, str);
    }
}
