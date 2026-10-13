package kotlin.jvm.d;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.JvmName;
import kotlin.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CollectionToArray.kt */
@JvmName(name = "CollectionToArray")
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private static final Object[] f19943a = new Object[0];

    @JvmName(name = "toArray")
    @NotNull
    public static final Object[] a(@NotNull Collection<?> collection) {
        h.b(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArr = new Object[size];
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    objArr[i2] = it.next();
                    if (i3 >= objArr.length) {
                        if (!it.hasNext()) {
                            return objArr;
                        }
                        int i4 = ((i3 * 3) + 1) >>> 1;
                        if (i4 <= i3) {
                            if (i3 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                            i4 = 2147483645;
                        }
                        objArr = Arrays.copyOf(objArr, i4);
                        h.a((Object) objArr, "Arrays.copyOf(result, newSize)");
                    } else if (!it.hasNext()) {
                        Object[] copyOf = Arrays.copyOf(objArr, i3);
                        h.a((Object) copyOf, "Arrays.copyOf(result, size)");
                        return copyOf;
                    }
                    i2 = i3;
                }
            }
        }
        return f19943a;
    }

    @JvmName(name = "toArray")
    @NotNull
    public static final Object[] a(@NotNull Collection<?> collection, @Nullable Object[] objArr) {
        Object[] objArr2;
        h.b(collection, "collection");
        if (objArr != null) {
            int size = collection.size();
            int i2 = 0;
            if (size == 0) {
                if (objArr.length <= 0) {
                    return objArr;
                }
                objArr[0] = null;
                return objArr;
            }
            Iterator<?> it = collection.iterator();
            if (!it.hasNext()) {
                if (objArr.length <= 0) {
                    return objArr;
                }
                objArr[0] = null;
                return objArr;
            }
            if (size <= objArr.length) {
                objArr2 = objArr;
            } else {
                Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                if (newInstance == null) {
                    throw new r("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                }
                objArr2 = (Object[]) newInstance;
            }
            while (true) {
                int i3 = i2 + 1;
                objArr2[i2] = it.next();
                if (i3 >= objArr2.length) {
                    if (!it.hasNext()) {
                        return objArr2;
                    }
                    int i4 = ((i3 * 3) + 1) >>> 1;
                    if (i4 <= i3) {
                        if (i3 >= 2147483645) {
                            throw new OutOfMemoryError();
                        }
                        i4 = 2147483645;
                    }
                    objArr2 = Arrays.copyOf(objArr2, i4);
                    h.a((Object) objArr2, "Arrays.copyOf(result, newSize)");
                } else if (!it.hasNext()) {
                    if (objArr2 == objArr) {
                        objArr[i3] = null;
                        return objArr;
                    }
                    Object[] copyOf = Arrays.copyOf(objArr2, i3);
                    h.a((Object) copyOf, "Arrays.copyOf(result, size)");
                    return copyOf;
                }
                i2 = i3;
            }
        } else {
            throw new NullPointerException();
        }
    }
}
