package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: LocalResourceFetchProducer.java */
/* loaded from: classes.dex */
public class a0 extends y {

    /* renamed from: c, reason: collision with root package name */
    private final Resources f3899c;

    public a0(Executor executor, e.f.c.f.h hVar, Resources resources) {
        super(executor, hVar);
        this.f3899c = resources;
    }

    private int b(e.f.i.i.b bVar) {
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            assetFileDescriptor = this.f3899c.openRawResourceFd(c(bVar));
            int length = (int) assetFileDescriptor.getLength();
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused) {
                }
            }
            return length;
        } catch (Resources.NotFoundException unused2) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused3) {
                }
            }
            return -1;
        } catch (Throwable th) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    private static int c(e.f.i.i.b bVar) {
        return Integer.parseInt(bVar.p().getPath().substring(1));
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected e.f.i.g.e a(e.f.i.i.b bVar) {
        return b(this.f3899c.openRawResource(c(bVar)), b(bVar));
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected String a() {
        return "LocalResourceFetchProducer";
    }
}
