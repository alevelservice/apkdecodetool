package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(androidx.versionedparcelable.b bVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1817a = bVar.a(iconCompat.f1817a, 1);
        iconCompat.f1819c = bVar.a(iconCompat.f1819c, 2);
        iconCompat.f1820d = bVar.a((androidx.versionedparcelable.b) iconCompat.f1820d, 3);
        iconCompat.f1821e = bVar.a(iconCompat.f1821e, 4);
        iconCompat.f1822f = bVar.a(iconCompat.f1822f, 5);
        iconCompat.f1823g = (ColorStateList) bVar.a((androidx.versionedparcelable.b) iconCompat.f1823g, 6);
        iconCompat.f1825i = bVar.a(iconCompat.f1825i, 7);
        iconCompat.e();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, androidx.versionedparcelable.b bVar) {
        bVar.a(true, true);
        iconCompat.a(bVar.c());
        int i2 = iconCompat.f1817a;
        if (-1 != i2) {
            bVar.b(i2, 1);
        }
        byte[] bArr = iconCompat.f1819c;
        if (bArr != null) {
            bVar.b(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f1820d;
        if (parcelable != null) {
            bVar.b(parcelable, 3);
        }
        int i3 = iconCompat.f1821e;
        if (i3 != 0) {
            bVar.b(i3, 4);
        }
        int i4 = iconCompat.f1822f;
        if (i4 != 0) {
            bVar.b(i4, 5);
        }
        ColorStateList colorStateList = iconCompat.f1823g;
        if (colorStateList != null) {
            bVar.b(colorStateList, 6);
        }
        String str = iconCompat.f1825i;
        if (str != null) {
            bVar.b(str, 7);
        }
    }
}
