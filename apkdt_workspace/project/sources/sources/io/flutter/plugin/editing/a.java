package io.flutter.plugin.editing;

import io.flutter.embedding.engine.FlutterJNI;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlutterTextUtils.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final FlutterJNI f19235a;

    public a(FlutterJNI flutterJNI) {
        this.f19235a = flutterJNI;
    }

    public boolean a(int i2) {
        return this.f19235a.nativeFlutterTextUtilsIsEmoji(i2);
    }

    public boolean b(int i2) {
        return this.f19235a.nativeFlutterTextUtilsIsEmojiModifier(i2);
    }

    public boolean c(int i2) {
        return this.f19235a.nativeFlutterTextUtilsIsEmojiModifierBase(i2);
    }

    public boolean d(int i2) {
        return (48 <= i2 && i2 <= 57) || i2 == 35 || i2 == 42;
    }

    public boolean e(int i2) {
        return this.f19235a.nativeFlutterTextUtilsIsRegionalIndicator(i2);
    }

    public boolean f(int i2) {
        return 917536 <= i2 && i2 <= 917630;
    }

    public boolean g(int i2) {
        return this.f19235a.nativeFlutterTextUtilsIsVariationSelector(i2);
    }

    public int a(CharSequence charSequence, int i2) {
        int charCount;
        int length = charSequence.length();
        int i3 = length - 1;
        if (i2 >= i3) {
            return length;
        }
        int codePointAt = Character.codePointAt(charSequence, i2);
        int charCount2 = Character.charCount(codePointAt);
        int i4 = i2 + charCount2;
        int i5 = 0;
        if (i4 == 0) {
            return 0;
        }
        if (codePointAt == 10) {
            if (Character.codePointAt(charSequence, i4) == 13) {
                charCount2++;
            }
            return i2 + charCount2;
        }
        if (e(codePointAt)) {
            if (i4 >= i3 || !e(Character.codePointAt(charSequence, i4))) {
                return i4;
            }
            int i6 = i2;
            while (i6 > 0 && e(Character.codePointBefore(charSequence, i2))) {
                i6 -= Character.charCount(Character.codePointBefore(charSequence, i2));
                i5++;
            }
            if (i5 % 2 == 0) {
                charCount2 += 2;
            }
            return i2 + charCount2;
        }
        if (d(codePointAt)) {
            charCount2 += Character.charCount(codePointAt);
        }
        if (codePointAt == 8419) {
            int codePointBefore = Character.codePointBefore(charSequence, i4);
            int charCount3 = i4 + Character.charCount(codePointBefore);
            if (charCount3 < length && g(codePointBefore)) {
                int codePointAt2 = Character.codePointAt(charSequence, charCount3);
                if (d(codePointAt2)) {
                    charCount2 += Character.charCount(codePointBefore) + Character.charCount(codePointAt2);
                }
            } else if (d(codePointBefore)) {
                charCount2 += Character.charCount(codePointBefore);
            }
            return i2 + charCount2;
        }
        if (a(codePointAt)) {
            int i7 = i4;
            int i8 = 0;
            int i9 = codePointAt;
            boolean z = false;
            do {
                if (z) {
                    charCount2 += Character.charCount(i9) + i8 + 1;
                    z = false;
                }
                if (b(i9)) {
                    break;
                }
                if (i7 < length) {
                    i9 = Character.codePointAt(charSequence, i7);
                    i7 += Character.charCount(i9);
                    if (i9 == 8419) {
                        int codePointBefore2 = Character.codePointBefore(charSequence, i7);
                        int charCount4 = i7 + Character.charCount(codePointBefore2);
                        if (charCount4 < length && g(codePointBefore2)) {
                            int codePointAt3 = Character.codePointAt(charSequence, charCount4);
                            if (d(codePointAt3)) {
                                charCount2 += Character.charCount(codePointBefore2) + Character.charCount(codePointAt3);
                            }
                        } else if (d(codePointBefore2)) {
                            charCount2 += Character.charCount(codePointBefore2);
                        }
                        return i2 + charCount2;
                    }
                    if (b(i9)) {
                        charCount = Character.charCount(i9);
                    } else if (!g(i9)) {
                        if (i9 == 8205) {
                            int codePointAt4 = Character.codePointAt(charSequence, i7);
                            i7 += Character.charCount(codePointAt4);
                            if (i7 < length && g(codePointAt4)) {
                                int codePointAt5 = Character.codePointAt(charSequence, i7);
                                int charCount5 = Character.charCount(codePointAt5);
                                i7 += Character.charCount(codePointAt5);
                                i8 = charCount5;
                                i9 = codePointAt5;
                                z = true;
                                if (i7 < length || !z) {
                                    break;
                                    break;
                                }
                            } else {
                                i9 = codePointAt4;
                                z = true;
                            }
                        }
                    } else {
                        charCount = Character.charCount(i9);
                    }
                    charCount2 += charCount + 0;
                    break;
                }
                i8 = 0;
                if (i7 < length) {
                    break;
                }
            } while (a(i9));
        }
        return i2 + charCount2;
    }

    public int b(CharSequence charSequence, int i2) {
        int codePointBefore;
        int charCount;
        int charCount2;
        int i3 = 0;
        int i4 = 1;
        if (i2 <= 1 || (charCount2 = i2 - (charCount = Character.charCount((codePointBefore = Character.codePointBefore(charSequence, i2))))) == 0) {
            return 0;
        }
        if (codePointBefore == 10) {
            if (Character.codePointBefore(charSequence, charCount2) == 13) {
                charCount++;
            }
            return i2 - charCount;
        }
        if (e(codePointBefore)) {
            int codePointBefore2 = Character.codePointBefore(charSequence, charCount2);
            int charCount3 = charCount2 - Character.charCount(codePointBefore2);
            while (charCount3 > 0 && e(codePointBefore2)) {
                codePointBefore2 = Character.codePointBefore(charSequence, charCount3);
                charCount3 -= Character.charCount(codePointBefore2);
                i4++;
            }
            if (i4 % 2 == 0) {
                charCount += 2;
            }
            return i2 - charCount;
        }
        if (codePointBefore == 8419) {
            int codePointBefore3 = Character.codePointBefore(charSequence, charCount2);
            int charCount4 = charCount2 - Character.charCount(codePointBefore3);
            if (charCount4 > 0 && g(codePointBefore3)) {
                int codePointBefore4 = Character.codePointBefore(charSequence, charCount4);
                if (d(codePointBefore4)) {
                    charCount += Character.charCount(codePointBefore3) + Character.charCount(codePointBefore4);
                }
            } else if (d(codePointBefore3)) {
                charCount += Character.charCount(codePointBefore3);
            }
            return i2 - charCount;
        }
        if (codePointBefore == 917631) {
            codePointBefore = Character.codePointBefore(charSequence, charCount2);
            int charCount5 = Character.charCount(codePointBefore);
            while (true) {
                charCount2 -= charCount5;
                if (charCount2 <= 0 || !f(codePointBefore)) {
                    break;
                }
                charCount += Character.charCount(codePointBefore);
                codePointBefore = Character.codePointBefore(charSequence, charCount2);
                charCount5 = Character.charCount(codePointBefore);
            }
            if (!a(codePointBefore)) {
                return i2 - 2;
            }
            charCount += Character.charCount(codePointBefore);
        }
        if (g(codePointBefore)) {
            codePointBefore = Character.codePointBefore(charSequence, charCount2);
            if (!a(codePointBefore)) {
                return i2 - charCount;
            }
            charCount += Character.charCount(codePointBefore);
            charCount2 -= charCount;
        }
        if (a(codePointBefore)) {
            int i5 = charCount2;
            int i6 = 0;
            int i7 = codePointBefore;
            boolean z = false;
            while (true) {
                if (z) {
                    charCount += Character.charCount(i7) + i6 + 1;
                    z = false;
                }
                if (b(i7)) {
                    int codePointBefore5 = Character.codePointBefore(charSequence, i5);
                    int charCount6 = i5 - Character.charCount(codePointBefore5);
                    if (charCount6 > 0 && g(codePointBefore5)) {
                        codePointBefore5 = Character.codePointBefore(charSequence, charCount6);
                        if (!a(codePointBefore5)) {
                            return i2 - charCount;
                        }
                        i3 = Character.charCount(codePointBefore5);
                        Character.charCount(codePointBefore5);
                    }
                    if (c(codePointBefore5)) {
                        charCount += i3 + Character.charCount(codePointBefore5);
                    }
                } else {
                    if (i5 > 0) {
                        i7 = Character.codePointBefore(charSequence, i5);
                        i5 -= Character.charCount(i7);
                        if (i7 == 8205) {
                            int codePointBefore6 = Character.codePointBefore(charSequence, i5);
                            i5 -= Character.charCount(codePointBefore6);
                            if (i5 > 0 && g(codePointBefore6)) {
                                int codePointBefore7 = Character.codePointBefore(charSequence, i5);
                                int charCount7 = Character.charCount(codePointBefore7);
                                i5 -= Character.charCount(codePointBefore7);
                                i6 = charCount7;
                                i7 = codePointBefore7;
                                z = true;
                                if (i5 != 0 || !z || !a(i7)) {
                                    break;
                                    break;
                                }
                            } else {
                                i7 = codePointBefore6;
                                z = true;
                            }
                        }
                    }
                    i6 = 0;
                    if (i5 != 0) {
                        break;
                    }
                }
            }
        }
        return i2 - charCount;
    }
}
