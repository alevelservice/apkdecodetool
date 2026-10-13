package e.b.b.a.a.c;

import android.text.TextUtils;
import com.alipay.iap.android.aplog.core.filter.e;
import com.alipay.iap.android.aplog.core.filter.j;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: APLogConfigFacade.java */
/* loaded from: classes.dex */
public class c implements com.alipay.iap.android.aplog.core.filter.b {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f16954a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f16954a = bVar;
    }

    @Override // com.alipay.iap.android.aplog.core.filter.b
    public boolean a(e eVar) {
        boolean z;
        a aVar;
        a aVar2;
        a aVar3;
        a aVar4;
        boolean a2;
        if (eVar != null && !TextUtils.isEmpty(eVar.f3317b)) {
            z = b.f16950b;
            if (z) {
                aVar = b.f16951c;
                if (aVar == null) {
                    return true;
                }
                aVar2 = b.f16951c;
                if (aVar2.logTypes != null) {
                    aVar3 = b.f16951c;
                    if (aVar3.logTypes.size() != 0) {
                        aVar4 = b.f16951c;
                        if (aVar4.logTypes.contains(eVar.f3317b)) {
                            a2 = this.f16954a.a(eVar);
                            return a2;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.alipay.iap.android.aplog.core.filter.b
    public j a(com.alipay.iap.android.aplog.core.filter.d dVar) {
        j jVar = new j();
        jVar.f3332a = true;
        return jVar;
    }
}
