package com.pichillilorenzo.flutter_inappwebview.b;

/* compiled from: ContentBlockerTriggerResourceType.java */
/* loaded from: classes2.dex */
public enum f {
    DOCUMENT("document"),
    IMAGE("image"),
    STYLE_SHEET("style-sheet"),
    SCRIPT("script"),
    FONT("font"),
    SVG_DOCUMENT("svg-document"),
    MEDIA("media"),
    POPUP("popup"),
    RAW("raw");

    private final String value;

    f(String str) {
        this.value = str;
    }

    public static f fromValue(String str) {
        for (f fVar : values()) {
            if (str.equals(fVar.value)) {
                return fVar;
            }
        }
        throw new IllegalArgumentException("No enum constant: " + str);
    }

    public boolean equalsValue(String str) {
        return this.value.equals(str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
