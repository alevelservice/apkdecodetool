package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

/* compiled from: PreferredContentModeOptionType.java */
/* loaded from: classes2.dex */
public enum i {
    RECOMMENDED(0),
    MOBILE(1),
    DESKTOP(2);

    private final int value;

    i(int i2) {
        this.value = i2;
    }

    public static i fromValue(int i2) {
        for (i iVar : values()) {
            if (i2 == iVar.toValue()) {
                return iVar;
            }
        }
        throw new IllegalArgumentException("No enum constant: " + i2);
    }

    public boolean equalsValue(int i2) {
        return this.value == i2;
    }

    public int toValue() {
        return this.value;
    }
}
