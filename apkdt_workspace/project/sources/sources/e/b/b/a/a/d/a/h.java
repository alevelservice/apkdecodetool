package e.b.b.a.a.d.a;

import java.io.File;
import java.util.Comparator;

/* compiled from: LogFileLogAppender.java */
/* loaded from: classes.dex */
final class h implements Comparator<File> {
    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        return file.getName().compareTo(file2.getName());
    }
}
