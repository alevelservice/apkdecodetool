package e.i.b.b.c;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class b extends a.AbstractC0084a<com.google.android.gms.signin.internal.a, a> {
    @Override // com.google.android.gms.common.api.a.AbstractC0084a
    public final /* synthetic */ com.google.android.gms.signin.internal.a a(Context context, Looper looper, com.google.android.gms.common.internal.c cVar, a aVar, f.a aVar2, f.b bVar) {
        a aVar3 = aVar;
        if (aVar3 == null) {
            aVar3 = a.n;
        }
        return new com.google.android.gms.signin.internal.a(context, looper, true, cVar, aVar3, aVar2, bVar);
    }
}
