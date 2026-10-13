package com.google.firebase.crashlytics.d.p;

/* compiled from: MiddleOutFallbackStrategy.java */
/* loaded from: classes.dex */
public class a implements d {

    /* renamed from: a, reason: collision with root package name */
    private final int f14734a;

    /* renamed from: b, reason: collision with root package name */
    private final d[] f14735b;

    /* renamed from: c, reason: collision with root package name */
    private final b f14736c;

    public a(int i2, d... dVarArr) {
        this.f14734a = i2;
        this.f14735b = dVarArr;
        this.f14736c = new b(i2);
    }

    @Override // com.google.firebase.crashlytics.d.p.d
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= this.f14734a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (d dVar : this.f14735b) {
            if (stackTraceElementArr2.length <= this.f14734a) {
                break;
            }
            stackTraceElementArr2 = dVar.a(stackTraceElementArr);
        }
        return stackTraceElementArr2.length > this.f14734a ? this.f14736c.a(stackTraceElementArr2) : stackTraceElementArr2;
    }
}
