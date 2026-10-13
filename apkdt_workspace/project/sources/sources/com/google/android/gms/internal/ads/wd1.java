package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class wd1 implements ci {

    /* renamed from: l, reason: collision with root package name */
    private static fe1 f10090l = fe1.a(wd1.class);

    /* renamed from: e, reason: collision with root package name */
    private String f10091e;

    /* renamed from: h, reason: collision with root package name */
    private ByteBuffer f10094h;

    /* renamed from: i, reason: collision with root package name */
    private long f10095i;

    /* renamed from: k, reason: collision with root package name */
    private zd1 f10097k;

    /* renamed from: j, reason: collision with root package name */
    private long f10096j = -1;

    /* renamed from: g, reason: collision with root package name */
    private boolean f10093g = true;

    /* renamed from: f, reason: collision with root package name */
    boolean f10092f = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public wd1(String str) {
        this.f10091e = str;
    }

    private final synchronized void b() {
        if (!this.f10093g) {
            try {
                fe1 fe1Var = f10090l;
                String valueOf = String.valueOf(this.f10091e);
                fe1Var.a(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                this.f10094h = this.f10097k.a(this.f10095i, this.f10096j);
                this.f10093g = true;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ci
    public final void a(uk ukVar) {
    }

    @Override // com.google.android.gms.internal.ads.ci
    public final void a(zd1 zd1Var, ByteBuffer byteBuffer, long j2, bh bhVar) {
        this.f10095i = zd1Var.position();
        byteBuffer.remaining();
        this.f10096j = j2;
        this.f10097k = zd1Var;
        zd1Var.g(zd1Var.position() + j2);
        this.f10093g = false;
        this.f10092f = false;
        a();
    }

    protected abstract void a(ByteBuffer byteBuffer);

    @Override // com.google.android.gms.internal.ads.ci
    public final String getType() {
        return this.f10091e;
    }

    public final synchronized void a() {
        b();
        fe1 fe1Var = f10090l;
        String valueOf = String.valueOf(this.f10091e);
        fe1Var.a(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
        if (this.f10094h != null) {
            ByteBuffer byteBuffer = this.f10094h;
            this.f10092f = true;
            byteBuffer.rewind();
            a(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                byteBuffer.slice();
            }
            this.f10094h = null;
        }
    }
}
