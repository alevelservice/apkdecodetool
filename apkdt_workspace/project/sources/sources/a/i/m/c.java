package a.i.m;

import androidx.annotation.RestrictTo;
import java.io.Writer;

/* compiled from: LogWriter.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes.dex */
public class c extends Writer {

    /* renamed from: e, reason: collision with root package name */
    private final String f361e;

    /* renamed from: f, reason: collision with root package name */
    private StringBuilder f362f = new StringBuilder(128);

    public c(String str) {
        this.f361e = str;
    }

    private void i() {
        if (this.f362f.length() > 0) {
            this.f362f.toString();
            StringBuilder sb = this.f362f;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        i();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        i();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            char c2 = cArr[i2 + i4];
            if (c2 == '\n') {
                i();
            } else {
                this.f362f.append(c2);
            }
        }
    }
}
