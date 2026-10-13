package e.k.a;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import k.b.a.y.c;
import k.b.a.y.h;
import k.b.a.y.i;

/* compiled from: AssetsZoneRulesInitializer.java */
/* loaded from: classes2.dex */
final class b extends h {

    /* renamed from: c, reason: collision with root package name */
    private final Context f17999c;

    /* renamed from: d, reason: collision with root package name */
    private final String f18000d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, String str) {
        this.f17999c = context;
        this.f18000d = str;
    }

    @Override // k.b.a.y.h
    protected void a() {
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f17999c.getAssets().open(this.f18000d);
                c cVar = new c(inputStream);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                i.a(cVar);
            } catch (IOException e2) {
                throw new IllegalStateException(this.f18000d + " missing from assets", e2);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
