package e.f.a;

import com.facebook.common.internal.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import javax.annotation.Nullable;

/* compiled from: FileBinaryResource.java */
/* loaded from: classes.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    private final File f17124a;

    private b(File file) {
        h.a(file);
        this.f17124a = file;
    }

    @Override // e.f.a.a
    public InputStream a() {
        return new FileInputStream(this.f17124a);
    }

    public File b() {
        return this.f17124a;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        return this.f17124a.equals(((b) obj).f17124a);
    }

    public int hashCode() {
        return this.f17124a.hashCode();
    }

    @Override // e.f.a.a
    public long size() {
        return this.f17124a.length();
    }

    @Nullable
    public static b a(File file) {
        if (file != null) {
            return new b(file);
        }
        return null;
    }
}
