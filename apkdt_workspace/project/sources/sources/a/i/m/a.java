package a.i.m;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: AtomicFile.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final File f359a;

    /* renamed from: b, reason: collision with root package name */
    private final File f360b;

    public a(@NonNull File file) {
        this.f359a = file;
        this.f360b = new File(file.getPath() + ".bak");
    }

    private static boolean c(@NonNull FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @NonNull
    public FileOutputStream a() {
        if (this.f359a.exists()) {
            if (!this.f360b.exists()) {
                if (!this.f359a.renameTo(this.f360b)) {
                    String str = "Couldn't rename file " + this.f359a + " to backup file " + this.f360b;
                }
            } else {
                this.f359a.delete();
            }
        }
        try {
            return new FileOutputStream(this.f359a);
        } catch (FileNotFoundException unused) {
            if (this.f359a.getParentFile().mkdirs()) {
                try {
                    return new FileOutputStream(this.f359a);
                } catch (FileNotFoundException unused2) {
                    throw new IOException("Couldn't create " + this.f359a);
                }
            }
            throw new IOException("Couldn't create directory " + this.f359a);
        }
    }

    public void b(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            c(fileOutputStream);
            try {
                fileOutputStream.close();
                this.f360b.delete();
            } catch (IOException unused) {
            }
        }
    }

    public void a(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            c(fileOutputStream);
            try {
                fileOutputStream.close();
                this.f359a.delete();
                this.f360b.renameTo(this.f359a);
            } catch (IOException unused) {
            }
        }
    }
}
