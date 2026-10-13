package com.google.gson.internal.m;

import com.google.gson.i;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* compiled from: UnsafeReflectionAccessor.java */
/* loaded from: classes2.dex */
final class c extends b {

    /* renamed from: d, reason: collision with root package name */
    private static Class f15467d;

    /* renamed from: b, reason: collision with root package name */
    private final Object f15468b = c();

    /* renamed from: c, reason: collision with root package name */
    private final Field f15469c = b();

    private static Object c() {
        try {
            f15467d = Class.forName("sun.misc.Unsafe");
            Field declaredField = f15467d.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.gson.internal.m.b
    public void a(AccessibleObject accessibleObject) {
        if (b(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e2) {
            throw new i("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e2);
        }
    }

    boolean b(AccessibleObject accessibleObject) {
        if (this.f15468b != null && this.f15469c != null) {
            try {
                f15467d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f15468b, accessibleObject, Long.valueOf(((Long) f15467d.getMethod("objectFieldOffset", Field.class).invoke(this.f15468b, this.f15469c)).longValue()), true);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Field b() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }
}
