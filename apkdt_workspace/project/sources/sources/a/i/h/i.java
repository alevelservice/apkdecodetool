package a.i.h;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.b;
import com.alipay.mobile.security.bio.api.BioError;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: TypefaceCompatApi29Impl.java */
@RequiresApi(29)
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class i extends j {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // a.i.h.j
    public b.f a(b.f[] fVarArr, int i2) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // a.i.h.j
    public Typeface a(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // a.i.h.j
    @Nullable
    public Typeface a(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull b.f[] fVarArr, int i2) {
        int i3;
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        int length = fVarArr.length;
        FontFamily.Builder builder = null;
        while (true) {
            int i4 = 1;
            if (i3 >= length) {
                if (builder == null) {
                    return null;
                }
                return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i2 & 1) != 0 ? 700 : BioError.ERROR_SINGLETON_BUSY, (i2 & 2) != 0 ? 1 : 0)).build();
            }
            b.f fVar = fVarArr[i3];
            try {
                openFileDescriptor = contentResolver.openFileDescriptor(fVar.c(), "r", cancellationSignal);
            } catch (IOException unused) {
                continue;
            }
            if (openFileDescriptor != null) {
                try {
                    Font.Builder weight = new Font.Builder(openFileDescriptor).setWeight(fVar.d());
                    if (!fVar.e()) {
                        i4 = 0;
                    }
                    Font build = weight.setSlant(i4).setTtcIndex(fVar.b()).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                    if (openFileDescriptor == null) {
                    }
                } catch (Throwable th) {
                    if (openFileDescriptor != null) {
                        try {
                            openFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                    break;
                }
            } else {
                i3 = openFileDescriptor == null ? i3 + 1 : 0;
            }
            openFileDescriptor.close();
        }
    }

    @Override // a.i.h.j
    @Nullable
    public Typeface a(Context context, FontResourcesParserCompat.b bVar, Resources resources, int i2) {
        FontResourcesParserCompat.c[] a2 = bVar.a();
        int length = a2.length;
        FontFamily.Builder builder = null;
        int i3 = 0;
        while (true) {
            int i4 = 1;
            if (i3 >= length) {
                break;
            }
            FontResourcesParserCompat.c cVar = a2[i3];
            try {
                Font.Builder weight = new Font.Builder(resources, cVar.b()).setWeight(cVar.e());
                if (!cVar.f()) {
                    i4 = 0;
                }
                Font build = weight.setSlant(i4).setTtcIndex(cVar.c()).setFontVariationSettings(cVar.d()).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException unused) {
            }
            i3++;
        }
        if (builder == null) {
            return null;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i2 & 1) != 0 ? 700 : BioError.ERROR_SINGLETON_BUSY, (i2 & 2) != 0 ? 1 : 0)).build();
    }

    @Override // a.i.h.j
    @Nullable
    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        try {
            Font build = new Font.Builder(resources, i2).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (IOException unused) {
            return null;
        }
    }
}
