package e.b.b.a.a.e;

import java.io.File;
import java.io.FileFilter;

/* compiled from: DeviceHWInfo.java */
/* loaded from: classes.dex */
final class e implements FileFilter {
    @Override // java.io.FileFilter
    public boolean accept(File file) {
        String name = file.getName();
        if (!name.startsWith("cpu")) {
            return false;
        }
        for (int i2 = 3; i2 < name.length(); i2++) {
            if (!Character.isDigit(name.charAt(i2))) {
                return false;
            }
        }
        return true;
    }
}
