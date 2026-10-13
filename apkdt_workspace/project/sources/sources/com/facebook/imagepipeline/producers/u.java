package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: LocalAssetFetchProducer.java */
/* loaded from: classes.dex */
public class u extends y {

    /* renamed from: c, reason: collision with root package name */
    private final AssetManager f4111c;

    public u(Executor executor, e.f.c.f.h hVar, AssetManager assetManager) {
        super(executor, hVar);
        this.f4111c = assetManager;
    }

    private static String b(e.f.i.i.b bVar) {
        return bVar.p().getPath().substring(1);
    }

    private int c(e.f.i.i.b bVar) {
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            assetFileDescriptor = this.f4111c.openFd(b(bVar));
            int length = (int) assetFileDescriptor.getLength();
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused) {
                }
            }
            return length;
        } catch (IOException unused2) {
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

    @Override // com.facebook.imagepipeline.producers.y
    protected e.f.i.g.e a(e.f.i.i.b bVar) {
        return b(this.f4111c.open(b(bVar), 2), c(bVar));
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected String a() {
        return "LocalAssetFetchProducer";
    }
}
