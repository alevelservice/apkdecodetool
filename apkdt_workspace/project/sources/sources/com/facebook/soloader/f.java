package com.facebook.soloader;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.channels.FileLock;
import javax.annotation.Nullable;

/* compiled from: FileLocker.java */
/* loaded from: classes.dex */
public final class f implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    private final FileOutputStream f4197e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final FileLock f4198f;

    private f(File file) {
        this.f4197e = new FileOutputStream(file);
        try {
            FileLock lock = this.f4197e.getChannel().lock();
            if (lock == null) {
            }
            this.f4198f = lock;
        } finally {
            this.f4197e.close();
        }
    }

    public static f a(File file) {
        return new f(file);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            if (this.f4198f != null) {
                this.f4198f.release();
            }
        } finally {
            this.f4197e.close();
        }
    }
}
