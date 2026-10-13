package de.esys.esysfluttershare;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import androidx.core.content.FileProvider;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: EsysFlutterSharePlugin.java */
/* loaded from: classes2.dex */
public class a implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private m.d f16788e;

    private a(m.d dVar) {
        this.f16788e = dVar;
    }

    public static void a(m.d dVar) {
        new k(dVar.d(), "channel:github.com/orgs/esysberlin/esys-flutter-share").a(new a(dVar));
    }

    private void b(Object obj) {
        HashMap hashMap = (HashMap) obj;
        String str = (String) hashMap.get("title");
        ArrayList arrayList = (ArrayList) hashMap.get("names");
        String str2 = (String) hashMap.get("mimeType");
        String str3 = (String) hashMap.get("text");
        Context c2 = this.f16788e.c();
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setType(str2);
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(FileProvider.getUriForFile(c2, c2.getPackageName() + ".fileprovider.github.com/orgs/esysberlin/esys-flutter-share", new File(c2.getCacheDir(), (String) it.next())));
        }
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList2);
        if (!str3.isEmpty()) {
            intent.putExtra("android.intent.extra.TEXT", str3);
        }
        c2.startActivity(Intent.createChooser(intent, str));
    }

    private void c(Object obj) {
        HashMap hashMap = (HashMap) obj;
        String str = (String) hashMap.get("title");
        String str2 = (String) hashMap.get("text");
        String str3 = (String) hashMap.get("mimeType");
        Context c2 = this.f16788e.c();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(str3);
        intent.putExtra("android.intent.extra.TEXT", str2);
        c2.startActivity(Intent.createChooser(intent, str));
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (jVar.f18223a.equals("text")) {
            c(jVar.f18224b);
        }
        if (jVar.f18223a.equals("file")) {
            a(jVar.f18224b);
        }
        if (jVar.f18223a.equals("files")) {
            b(jVar.f18224b);
        }
    }

    private void a(Object obj) {
        HashMap hashMap = (HashMap) obj;
        String str = (String) hashMap.get("title");
        String str2 = (String) hashMap.get("name");
        String str3 = (String) hashMap.get("mimeType");
        String str4 = (String) hashMap.get("text");
        Context c2 = this.f16788e.c();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(str3);
        intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(c2, c2.getPackageName() + ".fileprovider.github.com/orgs/esysberlin/esys-flutter-share", new File(c2.getCacheDir(), str2)));
        if (!str4.isEmpty()) {
            intent.putExtra("android.intent.extra.TEXT", str4);
        }
        c2.startActivity(Intent.createChooser(intent, str));
    }
}
