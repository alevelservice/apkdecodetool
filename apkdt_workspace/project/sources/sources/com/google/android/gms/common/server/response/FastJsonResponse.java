package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.zab;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public abstract class FastJsonResponse {

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @VisibleForTesting
    @SafeParcelable.Class(creator = "FieldCreator")
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final com.google.android.gms.common.server.response.a CREATOR = new com.google.android.gms.common.server.response.a();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.VersionField(getter = "getVersionCode", id = 1)
        private final int f5376e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(getter = "getTypeIn", id = 2)
        protected final int f5377f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(getter = "isTypeInArray", id = 3)
        protected final boolean f5378g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(getter = "getTypeOut", id = 4)
        protected final int f5379h;

        /* renamed from: i, reason: collision with root package name */
        @SafeParcelable.Field(getter = "isTypeOutArray", id = 5)
        protected final boolean f5380i;

        /* renamed from: j, reason: collision with root package name */
        @SafeParcelable.Field(getter = "getOutputFieldName", id = 6)
        protected final String f5381j;

        /* renamed from: k, reason: collision with root package name */
        @SafeParcelable.Field(getter = "getSafeParcelableFieldId", id = 7)
        protected final int f5382k;

        /* renamed from: l, reason: collision with root package name */
        protected final Class<? extends FastJsonResponse> f5383l;

        @SafeParcelable.Field(getter = "getConcreteTypeName", id = 8)
        private final String m;
        private zaj n;

        @SafeParcelable.Field(getter = "getWrappedConverter", id = 9, type = "com.google.android.gms.common.server.converter.ConverterWrapper")
        private a<I, O> o;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public Field(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) int i5, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) zab zabVar) {
            this.f5376e = i2;
            this.f5377f = i3;
            this.f5378g = z;
            this.f5379h = i4;
            this.f5380i = z2;
            this.f5381j = str;
            this.f5382k = i5;
            if (str2 == null) {
                this.f5383l = null;
                this.m = null;
            } else {
                this.f5383l = SafeParcelResponse.class;
                this.m = str2;
            }
            if (zabVar == null) {
                this.o = null;
            } else {
                this.o = (a<I, O>) zabVar.j();
            }
        }

        @VisibleForTesting
        @KeepForSdk
        public static Field<Integer, Integer> b(String str, int i2) {
            return new Field<>(0, false, 0, false, str, i2, null, null);
        }

        @KeepForSdk
        public static Field<String, String> c(String str, int i2) {
            return new Field<>(7, false, 7, false, str, i2, null, null);
        }

        @KeepForSdk
        public static Field<ArrayList<String>, ArrayList<String>> d(String str, int i2) {
            return new Field<>(7, true, 7, true, str, i2, null, null);
        }

        private final String m() {
            String str = this.m;
            if (str == null) {
                return null;
            }
            return str;
        }

        private final zab o() {
            a<I, O> aVar = this.o;
            if (aVar == null) {
                return null;
            }
            return zab.a(aVar);
        }

        public final void a(zaj zajVar) {
            this.n = zajVar;
        }

        @KeepForSdk
        public int j() {
            return this.f5382k;
        }

        public final boolean k() {
            return this.o != null;
        }

        public final Map<String, Field<?, ?>> l() {
            m.a(this.m);
            m.a(this.n);
            return this.n.b(this.m);
        }

        public String toString() {
            k.a a2 = k.a(this);
            a2.a("versionCode", Integer.valueOf(this.f5376e));
            a2.a("typeIn", Integer.valueOf(this.f5377f));
            a2.a("typeInArray", Boolean.valueOf(this.f5378g));
            a2.a("typeOut", Integer.valueOf(this.f5379h));
            a2.a("typeOutArray", Boolean.valueOf(this.f5380i));
            a2.a("outputFieldName", this.f5381j);
            a2.a("safeParcelFieldId", Integer.valueOf(this.f5382k));
            a2.a("concreteTypeName", m());
            Class<? extends FastJsonResponse> cls = this.f5383l;
            if (cls != null) {
                a2.a("concreteType.class", cls.getCanonicalName());
            }
            a<I, O> aVar = this.o;
            if (aVar != null) {
                a2.a("converterName", aVar.getClass().getCanonicalName());
            }
            return a2.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5376e);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5377f);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5378g);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5379h);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5380i);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f5381j, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, j());
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, m(), false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable) o(), i2, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> b(String str, int i2, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i2, cls, null);
        }

        public final I a(O o) {
            return this.o.a(o);
        }

        @VisibleForTesting
        @KeepForSdk
        public static Field<byte[], byte[]> a(String str, int i2) {
            return new Field<>(8, false, 8, false, str, i2, null, null);
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<T, T> a(String str, int i2, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i2, cls, null);
        }

        private Field(int i2, boolean z, int i3, boolean z2, String str, int i4, Class<? extends FastJsonResponse> cls, a<I, O> aVar) {
            this.f5376e = 1;
            this.f5377f = i2;
            this.f5378g = z;
            this.f5379h = i3;
            this.f5380i = z2;
            this.f5381j = str;
            this.f5382k = i4;
            this.f5383l = cls;
            if (cls == null) {
                this.m = null;
            } else {
                this.m = cls.getCanonicalName();
            }
            this.o = aVar;
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @ShowFirstParty
    /* loaded from: classes.dex */
    public interface a<I, O> {
        I a(O o);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static <O, I> I a(Field<I, O> field, Object obj) {
        return ((Field) field).o != null ? field.a((Field<I, O>) obj) : obj;
    }

    @KeepForSdk
    protected abstract Object a(String str);

    @KeepForSdk
    public abstract Map<String, Field<?, ?>> a();

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public boolean b(Field field) {
        if (field.f5379h == 11) {
            if (field.f5380i) {
                String str = field.f5381j;
                throw new UnsupportedOperationException("Concrete type arrays not supported");
            }
            String str2 = field.f5381j;
            throw new UnsupportedOperationException("Concrete types not supported");
        }
        return b(field.f5381j);
    }

    @KeepForSdk
    protected abstract boolean b(String str);

    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> a2 = a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : a2.keySet()) {
            Field<?, ?> field = a2.get(str);
            if (b(field)) {
                Object a3 = a(field, a(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (a3 == null) {
                    sb.append("null");
                } else {
                    switch (field.f5379h) {
                        case 8:
                            sb.append("\"");
                            sb.append(com.google.android.gms.common.util.c.a((byte[]) a3));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(com.google.android.gms.common.util.c.b((byte[]) a3));
                            sb.append("\"");
                            break;
                        case 10:
                            com.google.android.gms.common.util.m.a(sb, (HashMap) a3);
                            break;
                        default:
                            if (field.f5378g) {
                                ArrayList arrayList = (ArrayList) a3;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i2 = 0; i2 < size; i2++) {
                                    if (i2 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i2);
                                    if (obj != null) {
                                        a(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                break;
                            } else {
                                a(sb, field, a3);
                                break;
                            }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public Object a(Field field) {
        String str = field.f5381j;
        if (field.f5383l != null) {
            m.b(a(str) == null, "Concrete field shouldn't be value object: %s", field.f5381j);
            boolean z = field.f5380i;
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
                sb.append("get");
                sb.append(upperCase);
                sb.append(substring);
                return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        return a(str);
    }

    private static void a(StringBuilder sb, Field field, Object obj) {
        int i2 = field.f5377f;
        if (i2 == 11) {
            sb.append(field.f5383l.cast(obj).toString());
        } else {
            if (i2 == 7) {
                sb.append("\"");
                sb.append(l.a((String) obj));
                sb.append("\"");
                return;
            }
            sb.append(obj);
        }
    }
}
