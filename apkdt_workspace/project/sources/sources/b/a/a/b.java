package b.a.a;

import android.content.SharedPreferences;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.k;

/* compiled from: InstallReferrerPlugin.java */
/* loaded from: classes.dex */
class b implements k.d {

    /* renamed from: a, reason: collision with root package name */
    SharedPreferences f3098a;

    /* renamed from: b, reason: collision with root package name */
    k.d f3099b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(SharedPreferences sharedPreferences, k.d dVar) {
        this.f3098a = sharedPreferences;
        this.f3099b = dVar;
    }

    @Override // g.a.c.a.k.d
    public void a(Object obj) {
        System.out.println(HummerConstants.EKYC_SUCCESS);
        SharedPreferences.Editor edit = this.f3098a.edit();
        edit.putBoolean("first_launch", false);
        edit.apply();
        this.f3099b.a(obj);
    }

    @Override // g.a.c.a.k.d
    public void a(String str, String str2, Object obj) {
        this.f3099b.a(str, str2, obj);
    }

    @Override // g.a.c.a.k.d
    public void a() {
        this.f3099b.a();
    }
}
