package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.l;
import java.io.File;
import java.io.FileInputStream;

/* compiled from: ExoSoSource.java */
/* loaded from: classes.dex */
public final class d extends l {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoSoSource.java */
    /* loaded from: classes.dex */
    public final class b extends l.f {

        /* renamed from: e, reason: collision with root package name */
        private final c[] f4183e;

        /* compiled from: ExoSoSource.java */
        /* loaded from: classes.dex */
        private final class a extends l.e {

            /* renamed from: e, reason: collision with root package name */
            private int f4184e;

            private a() {
            }

            @Override // com.facebook.soloader.l.e
            public boolean i() {
                return this.f4184e < b.this.f4183e.length;
            }

            @Override // com.facebook.soloader.l.e
            public l.d j() {
                c[] cVarArr = b.this.f4183e;
                int i2 = this.f4184e;
                this.f4184e = i2 + 1;
                c cVar = cVarArr[i2];
                FileInputStream fileInputStream = new FileInputStream(cVar.f4186g);
                try {
                    return new l.d(cVar, fileInputStream);
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x00dc, code lost:
        
            throw new java.lang.RuntimeException("illegal line in exopackage metadata: [" + r10 + "]");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        b(com.facebook.soloader.d r17, com.facebook.soloader.l r18) {
            /*
                Method dump skipped, instructions count: 295
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.d.b.<init>(com.facebook.soloader.d, com.facebook.soloader.l):void");
        }

        @Override // com.facebook.soloader.l.f
        protected l.c i() {
            return new l.c(this.f4183e);
        }

        @Override // com.facebook.soloader.l.f
        protected l.e j() {
            return new a();
        }
    }

    /* compiled from: ExoSoSource.java */
    /* loaded from: classes.dex */
    private static final class c extends l.b {

        /* renamed from: g, reason: collision with root package name */
        final File f4186g;

        c(String str, String str2, File file) {
            super(str, str2);
            this.f4186g = file;
        }
    }

    public d(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.l
    protected l.f b() {
        return new b(this, this);
    }
}
