package com.zoloz.webcontainer.l;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: H5OfflineManager.java */
/* loaded from: classes2.dex */
public class b implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ Context f16737e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ a f16738f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, Context context) {
        this.f16738f = aVar;
        this.f16737e = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        String str3;
        int i2;
        String str4;
        boolean z;
        String str5;
        String str6;
        String str7;
        str = this.f16738f.f16731c;
        if (str != null) {
            a aVar = this.f16738f;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f16737e.getFilesDir().getPath());
            sb.append("/");
            str5 = this.f16738f.f16736h;
            sb.append(str5);
            sb.append("/ekyc_web");
            aVar.f16729a = sb.toString();
            a aVar2 = this.f16738f;
            Context context = this.f16737e;
            str6 = aVar2.f16731c;
            str7 = this.f16738f.f16729a;
            aVar2.f16735g = com.zoloz.webcontainer.p.c.a(context, str6, str7);
            com.zoloz.webcontainer.b.a("H5OfflineManager", "resourceId have not been set, unzip from assets");
        } else {
            a aVar3 = this.f16738f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f16737e.getFilesDir().getPath());
            str2 = this.f16738f.f16730b;
            sb2.append(str2);
            aVar3.f16729a = sb2.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" unzip base path ");
            str3 = this.f16738f.f16729a;
            sb3.append(str3);
            com.zoloz.webcontainer.b.a("H5OfflineManager", sb3.toString());
            a aVar4 = this.f16738f;
            Context context2 = this.f16737e;
            i2 = aVar4.f16734f;
            str4 = this.f16738f.f16729a;
            aVar4.f16735g = com.zoloz.webcontainer.p.c.a(context2, i2, str4);
            StringBuilder sb4 = new StringBuilder();
            sb4.append(" unzip base path ok? ");
            z = this.f16738f.f16735g;
            sb4.append(z);
            com.zoloz.webcontainer.b.a("H5OfflineManager", sb4.toString());
        }
        this.f16738f.f16733e.countDown();
    }
}
