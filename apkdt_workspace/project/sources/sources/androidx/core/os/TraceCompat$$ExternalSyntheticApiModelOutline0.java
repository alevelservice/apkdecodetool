package androidx.core.os;

import android.content.ClipData;
import android.graphics.Insets;
import android.graphics.Rect;
import android.location.LocationRequest;
import android.os.LocaleList;
import android.text.PrecomputedText;
import android.text.TextPaint;
import android.view.ContentInfo;
import android.view.DisplayCutout;
import android.view.DragAndDropPermissions;
import java.util.List;
import java.util.Locale;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class TraceCompat$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ LocationRequest.Builder m(long j) {
        return new LocationRequest.Builder(j);
    }

    public static /* bridge */ /* synthetic */ LocationRequest m(Object obj) {
        return (LocationRequest) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ LocaleList m129m(Object obj) {
        return (LocaleList) obj;
    }

    public static /* synthetic */ LocaleList m(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ PrecomputedText.Params.Builder m130m(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ PrecomputedText m131m(Object obj) {
        return (PrecomputedText) obj;
    }

    public static /* synthetic */ ContentInfo.Builder m(ClipData clipData, int i) {
        return new ContentInfo.Builder(clipData, i);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ ContentInfo.Builder m134m(ContentInfo contentInfo) {
        return new ContentInfo.Builder(contentInfo);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ContentInfo m135m(Object obj) {
        return (ContentInfo) obj;
    }

    public static /* synthetic */ DisplayCutout m(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
        return new DisplayCutout(insets, rect, rect2, rect3, rect4);
    }

    public static /* synthetic */ DisplayCutout m(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
        return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
    }

    public static /* synthetic */ DisplayCutout m(Rect rect, List list) {
        return new DisplayCutout(rect, list);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ DisplayCutout m136m(Object obj) {
        return (DisplayCutout) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ DragAndDropPermissions m137m(Object obj) {
        return (DragAndDropPermissions) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m142m() {
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m146m(Object obj) {
        return obj instanceof PrecomputedText;
    }

    /* renamed from: m$1, reason: collision with other method in class */
    public static /* synthetic */ void m148m$1() {
    }

    public static /* synthetic */ void m$2() {
    }
}
