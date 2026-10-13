package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class h8 implements f8 {

    /* renamed from: a, reason: collision with root package name */
    private static final x<Boolean> f12374a;

    /* renamed from: b, reason: collision with root package name */
    private static final x<Boolean> f12375b;

    static {
        b0 a2 = new b0(u.a("com.google.android.gms.vision.sdk")).a("vision.sdk:");
        a2.a("OptionalModule__enable_barcode_optional_module", false);
        f12374a = a2.a("OptionalModule__enable_barcode_optional_module_v25", false);
        a2.a("OptionalModule__enable_face_optional_module", false);
        a2.a("OptionalModule__enable_face_optional_module_v25", true);
        a2.a("OptionalModule__enable_ica_optional_module", false);
        f12375b = a2.a("OptionalModule__enable_ica_optional_module_v25", false);
        a2.a("OptionalModule__enable_ocr_optional_module", false);
        a2.a("OptionalModule__enable_ocr_optional_module_v25", false);
        a2.a("OptionalModule__enable_old_download_path", true);
    }

    @Override // com.google.android.gms.internal.vision.f8
    public final boolean zzjp() {
        return f12374a.a().booleanValue();
    }

    @Override // com.google.android.gms.internal.vision.f8
    public final boolean zzjq() {
        return f12375b.a().booleanValue();
    }
}
