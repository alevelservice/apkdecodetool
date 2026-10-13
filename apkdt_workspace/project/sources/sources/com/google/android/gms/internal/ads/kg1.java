package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ev;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kg1 extends sg1 {

    /* renamed from: l, reason: collision with root package name */
    private final StackTraceElement[] f7686l;

    public kg1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3, StackTraceElement[] stackTraceElementArr) {
        super(cf1Var, str, str2, bVar, i2, 45);
        this.f7686l = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.sg1
    protected final void a() {
        m60 m60Var;
        StackTraceElement[] stackTraceElementArr = this.f7686l;
        if (stackTraceElementArr != null) {
            he1 he1Var = new he1((String) this.f9349i.invoke(null, stackTraceElementArr));
            synchronized (this.f9348h) {
                this.f9348h.x(he1Var.f7050a.longValue());
                if (he1Var.f7051b.booleanValue()) {
                    ev.b bVar = this.f9348h;
                    if (he1Var.f7052c.booleanValue()) {
                        m60Var = m60.ENUM_FALSE;
                    } else {
                        m60Var = m60.ENUM_TRUE;
                    }
                    bVar.c(m60Var);
                } else {
                    this.f9348h.c(m60.ENUM_FAILURE);
                }
            }
        }
    }
}
