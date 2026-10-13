package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vh extends jh implements ko1<wn1> {

    /* renamed from: h, reason: collision with root package name */
    private String f9922h;

    /* renamed from: i, reason: collision with root package name */
    private final qf f9923i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f9924j;

    /* renamed from: k, reason: collision with root package name */
    private final sh f9925k;

    /* renamed from: l, reason: collision with root package name */
    private final zg f9926l;
    private ByteBuffer m;
    private boolean n;
    private final Object o;
    private boolean p;

    public vh(tf tfVar, qf qfVar) {
        super(tfVar);
        this.f9923i = qfVar;
        this.f9925k = new sh();
        this.f9926l = new zg();
        this.o = new Object();
    }

    private final void f() {
        int a2 = (int) this.f9925k.a();
        int a3 = (int) this.f9926l.a(this.m);
        int position = this.m.position();
        int round = Math.round(a3 * (position / a2));
        boolean z = round > 0;
        int f2 = mg.f();
        int g2 = mg.g();
        String str = this.f9922h;
        a(str, b(str), position, a2, round, a3, z, f2, g2);
    }

    @Override // com.google.android.gms.internal.ads.ko1
    public final /* bridge */ /* synthetic */ void a(wn1 wn1Var) {
    }

    @Override // com.google.android.gms.internal.ads.ko1
    public final /* bridge */ /* synthetic */ void a(wn1 wn1Var, int i2) {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:? -> B:50:0x013a). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.jh
    public final boolean a(String str) {
        String str2;
        this.f9922h = str;
        String b2 = b(str);
        String str3 = HummerConstants.HUMMER_ERROR;
        int i2 = 0;
        try {
            wn1 do1Var = new do1(this.f7494f, null, this, this.f9923i.f8883d, this.f9923i.f8885f, true, null);
            if (this.f9923i.f8889j) {
                try {
                    do1Var = new lg(this.f7493e, do1Var, null, null);
                } catch (Exception e2) {
                    e = e2;
                    String canonicalName = e.getClass().getCanonicalName();
                    String message = e.getMessage();
                    StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 1 + String.valueOf(message).length());
                    sb.append(canonicalName);
                    sb.append(":");
                    sb.append(message);
                    String sb2 = sb.toString();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(sb2).length());
                    sb3.append("Failed to preload url ");
                    sb3.append(str);
                    sb3.append(" Exception: ");
                    sb3.append(sb2);
                    qd.d(sb3.toString());
                    a(str, b2, str3, sb2);
                    return false;
                }
            }
            do1Var.a(new bo1(Uri.parse(str)));
            tf tfVar = this.f7495g.get();
            if (tfVar != null) {
                tfVar.zza(b2, this);
            }
            com.google.android.gms.common.util.e j2 = com.google.android.gms.ads.internal.n.j();
            long a2 = j2.a();
            long longValue = ((Long) mu1.e().a(aw1.w)).longValue();
            long longValue2 = ((Long) mu1.e().a(aw1.v)).longValue();
            this.m = ByteBuffer.allocate(this.f9923i.f8882c);
            int i3 = FileUtil.STREAM_BUFFER_SIZE;
            byte[] bArr = new byte[FileUtil.STREAM_BUFFER_SIZE];
            long j3 = a2;
            while (true) {
                int a3 = do1Var.a(bArr, i2, Math.min(this.m.remaining(), i3));
                if (a3 == -1) {
                    this.p = true;
                    a(str, b2, (int) this.f9926l.a(this.m));
                    return true;
                }
                synchronized (this.o) {
                    try {
                        if (this.f9924j) {
                            str2 = str3;
                        } else {
                            str2 = str3;
                            try {
                                this.m.put(bArr, 0, a3);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        try {
                            if (this.m.remaining() <= 0) {
                                f();
                                return true;
                            }
                            if (!this.f9924j) {
                                long a4 = j2.a();
                                if (a4 - j3 >= longValue) {
                                    f();
                                    j3 = a4;
                                }
                                if (a4 - a2 > 1000 * longValue2) {
                                    StringBuilder sb4 = new StringBuilder(49);
                                    sb4.append("Timeout exceeded. Limit: ");
                                    sb4.append(longValue2);
                                    sb4.append(" sec");
                                    throw new IOException(sb4.toString());
                                }
                                str3 = str2;
                                i3 = FileUtil.STREAM_BUFFER_SIZE;
                                i2 = 0;
                            } else {
                                int limit = this.m.limit();
                                StringBuilder sb5 = new StringBuilder(35);
                                sb5.append("Precache abort at ");
                                sb5.append(limit);
                                sb5.append(" bytes");
                                throw new IOException(sb5.toString());
                            }
                        } catch (Exception e3) {
                            e = e3;
                            str3 = str2;
                            String canonicalName2 = e.getClass().getCanonicalName();
                            String message2 = e.getMessage();
                            StringBuilder sb6 = new StringBuilder(String.valueOf(canonicalName2).length() + 1 + String.valueOf(message2).length());
                            sb6.append(canonicalName2);
                            sb6.append(":");
                            sb6.append(message2);
                            String sb22 = sb6.toString();
                            StringBuilder sb32 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(sb22).length());
                            sb32.append("Failed to preload url ");
                            sb32.append(str);
                            sb32.append(" Exception: ");
                            sb32.append(sb22);
                            qd.d(sb32.toString());
                            a(str, b2, str3, sb22);
                            return false;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.jh
    public final String b(String str) {
        String valueOf = String.valueOf(super.b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    public final ByteBuffer c() {
        synchronized (this.o) {
            if (this.m != null && !this.n) {
                this.m.flip();
                this.n = true;
            }
            this.f9924j = true;
        }
        return this.m;
    }

    public final String d() {
        return this.f9922h;
    }

    public final boolean e() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.jh
    public final void b() {
        this.f9924j = true;
    }

    @Override // com.google.android.gms.internal.ads.ko1
    public final /* synthetic */ void a(wn1 wn1Var, bo1 bo1Var) {
        wn1 wn1Var2 = wn1Var;
        if (wn1Var2 instanceof do1) {
            this.f9925k.a((do1) wn1Var2);
        }
    }
}
