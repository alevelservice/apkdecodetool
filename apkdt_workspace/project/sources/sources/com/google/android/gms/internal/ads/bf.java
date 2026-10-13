package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class bf implements bh {

    /* renamed from: b, reason: collision with root package name */
    private static Logger f5769b = Logger.getLogger(bf.class.getName());

    /* renamed from: a, reason: collision with root package name */
    private ThreadLocal<ByteBuffer> f5770a = new be(this);

    @Override // com.google.android.gms.internal.ads.bh
    public final ci a(zd1 zd1Var, uk ukVar) {
        int read;
        long size;
        long position = zd1Var.position();
        this.f5770a.get().rewind().limit(8);
        do {
            read = zd1Var.read(this.f5770a.get());
            if (read == 8) {
                this.f5770a.get().rewind();
                long a2 = bj.a(this.f5770a.get());
                byte[] bArr = null;
                if (a2 < 8 && a2 > 1) {
                    Logger logger = f5769b;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(a2);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                String f2 = bj.f(this.f5770a.get());
                if (a2 == 1) {
                    this.f5770a.get().limit(16);
                    zd1Var.read(this.f5770a.get());
                    this.f5770a.get().position(8);
                    size = bj.c(this.f5770a.get()) - 16;
                } else {
                    size = a2 == 0 ? zd1Var.size() - zd1Var.position() : a2 - 8;
                }
                if ("uuid".equals(f2)) {
                    this.f5770a.get().limit(this.f5770a.get().limit() + 16);
                    zd1Var.read(this.f5770a.get());
                    bArr = new byte[16];
                    for (int position2 = this.f5770a.get().position() - 16; position2 < this.f5770a.get().position(); position2++) {
                        bArr[position2 - (this.f5770a.get().position() - 16)] = this.f5770a.get().get(position2);
                    }
                    size -= 16;
                }
                long j2 = size;
                ci a3 = a(f2, bArr, ukVar instanceof ci ? ((ci) ukVar).getType() : "");
                a3.a(ukVar);
                this.f5770a.get().rewind();
                a3.a(zd1Var, this.f5770a.get(), j2, this);
                return a3;
            }
        } while (read >= 0);
        zd1Var.g(position);
        throw new EOFException();
    }

    public abstract ci a(String str, byte[] bArr, String str2);
}
