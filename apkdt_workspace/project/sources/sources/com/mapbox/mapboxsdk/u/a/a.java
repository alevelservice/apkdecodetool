package com.mapbox.mapboxsdk.u.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.j;
import com.mapbox.geojson.Polygon;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Expression.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final String f16368a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final a[] f16369b;

    /* compiled from: Expression.java */
    /* loaded from: classes2.dex */
    public static class b extends a implements g {

        /* renamed from: c, reason: collision with root package name */
        protected Object f16371c;

        public b(@NonNull Object obj) {
            if (obj instanceof String) {
                obj = d((String) obj);
            } else if (obj instanceof Number) {
                obj = Float.valueOf(((Number) obj).floatValue());
            }
            this.f16371c = obj;
        }

        @NonNull
        private static String d(String str) {
            return (str.length() > 1 && str.charAt(0) == '\"' && str.charAt(str.length() - 1) == '\"') ? str.substring(1, str.length() - 1) : str;
        }

        @Override // com.mapbox.mapboxsdk.u.a.a.g
        public Object a() {
            Object obj = this.f16371c;
            if (obj instanceof com.mapbox.mapboxsdk.style.layers.d) {
                throw new IllegalArgumentException("PropertyValue are not allowed as an expression literal, use value instead.");
            }
            return obj instanceof b ? ((b) obj).a() : obj;
        }

        @Override // com.mapbox.mapboxsdk.u.a.a
        @NonNull
        public Object[] b() {
            return new Object[]{"literal", this.f16371c};
        }

        @Override // com.mapbox.mapboxsdk.u.a.a
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
                return false;
            }
            Object obj2 = this.f16371c;
            Object obj3 = ((b) obj).f16371c;
            return obj2 != null ? obj2.equals(obj3) : obj3 == null;
        }

        @Override // com.mapbox.mapboxsdk.u.a.a
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            Object obj = this.f16371c;
            return hashCode + (obj != null ? obj.hashCode() : 0);
        }

        @Override // com.mapbox.mapboxsdk.u.a.a
        public String toString() {
            Object obj = this.f16371c;
            if (obj instanceof String) {
                return "\"" + this.f16371c + "\"";
            }
            return obj.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Expression.java */
    /* loaded from: classes2.dex */
    public static class c extends b {
        c(@NonNull Object[] objArr) {
            super(objArr);
        }

        @Override // com.mapbox.mapboxsdk.u.a.a.b, com.mapbox.mapboxsdk.u.a.a
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return Arrays.equals((Object[]) this.f16371c, (Object[]) ((c) obj).f16371c);
        }

        @Override // com.mapbox.mapboxsdk.u.a.a.b, com.mapbox.mapboxsdk.u.a.a
        @NonNull
        public String toString() {
            Object[] objArr = (Object[]) this.f16371c;
            StringBuilder sb = new StringBuilder("[");
            for (int i2 = 0; i2 < objArr.length; i2++) {
                Object obj = objArr[i2];
                if (obj instanceof String) {
                    sb.append("\"");
                    sb.append(obj);
                    sb.append("\"");
                } else {
                    sb.append(obj);
                }
                if (i2 != objArr.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Expression.java */
    /* loaded from: classes2.dex */
    public static class d extends a implements g {

        /* renamed from: c, reason: collision with root package name */
        private Map<String, a> f16372c;

        d(Map<String, a> map) {
            this.f16372c = map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.mapbox.mapboxsdk.u.a.a.g
        @NonNull
        public Object a() {
            HashMap hashMap = new HashMap();
            for (String str : this.f16372c.keySet()) {
                a aVar = this.f16372c.get(str);
                if (aVar instanceof g) {
                    hashMap.put(str, ((g) aVar).a());
                } else {
                    hashMap.put(str, aVar.b());
                }
            }
            return hashMap;
        }

        @Override // com.mapbox.mapboxsdk.u.a.a
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && d.class == obj.getClass() && super.equals(obj)) {
                return this.f16372c.equals(((d) obj).f16372c);
            }
            return false;
        }

        @Override // com.mapbox.mapboxsdk.u.a.a
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            Map<String, a> map = this.f16372c;
            return hashCode + (map == null ? 0 : map.hashCode());
        }

        @Override // com.mapbox.mapboxsdk.u.a.a
        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            for (String str : this.f16372c.keySet()) {
                sb.append("\"");
                sb.append(str);
                sb.append("\": ");
                sb.append(this.f16372c.get(str));
                sb.append(", ");
            }
            if (this.f16372c.size() > 0) {
                sb.delete(sb.length() - 2, sb.length());
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* compiled from: Expression.java */
    /* loaded from: classes2.dex */
    public static class e extends a {
        e(@NonNull String str, @Nullable a... aVarArr) {
            super(str, aVarArr);
        }
    }

    /* compiled from: Expression.java */
    /* loaded from: classes2.dex */
    public static class f {

        /* renamed from: a, reason: collision with root package name */
        private Object f16373a;

        /* renamed from: b, reason: collision with root package name */
        private Object f16374b;

        f(Object obj, Object obj2) {
            this.f16373a = obj;
            this.f16374b = obj2;
        }

        @NonNull
        static a[] a(f... fVarArr) {
            a[] aVarArr = new a[fVarArr.length * 2];
            for (int i2 = 0; i2 < fVarArr.length; i2++) {
                f fVar = fVarArr[i2];
                Object obj = fVar.f16373a;
                Object obj2 = fVar.f16374b;
                if (!(obj instanceof a)) {
                    obj = a.a(obj);
                }
                if (!(obj2 instanceof a)) {
                    obj2 = a.a(obj2);
                }
                int i3 = i2 * 2;
                aVarArr[i3] = (a) obj;
                aVarArr[i3 + 1] = (a) obj2;
            }
            return aVarArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Expression.java */
    /* loaded from: classes2.dex */
    public interface g {
        Object a();
    }

    a() {
        this.f16368a = null;
        this.f16369b = null;
    }

    public static a a(@NonNull Number number) {
        return new b(number);
    }

    public static a b(@NonNull String str) {
        return new b(str);
    }

    public static e c() {
        return new e("linear", new a[0]);
    }

    public static a d() {
        return new a("zoom", new a[0]);
    }

    public boolean equals(@Nullable Object obj) {
        super.equals(obj);
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f16368a;
        if (str == null ? aVar.f16368a == null : str.equals(aVar.f16368a)) {
            return Arrays.deepEquals(this.f16369b, aVar.f16369b);
        }
        return false;
    }

    public int hashCode() {
        String str = this.f16368a;
        return ((str != null ? str.hashCode() : 0) * 31) + Arrays.hashCode(this.f16369b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[\"");
        sb.append(this.f16368a);
        sb.append("\"");
        a[] aVarArr = this.f16369b;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                sb.append(", ");
                sb.append(aVar.toString());
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static a a(@NonNull Object obj) {
        if (obj.getClass().isArray()) {
            return a(b(obj));
        }
        if (!(obj instanceof a)) {
            return new b(obj);
        }
        throw new RuntimeException("Can't convert an expression to a literal");
    }

    public static a b(@NonNull @Size(min = 1) a... aVarArr) {
        return new a("case", aVarArr);
    }

    public static a c(@NonNull String str) {
        return C0170a.a(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public Object[] b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f16368a);
        a[] aVarArr = this.f16369b;
        if (aVarArr != 0) {
            for (e eVar : aVarArr) {
                if (eVar instanceof g) {
                    arrayList.add(((g) eVar).a());
                } else {
                    arrayList.add(eVar.b());
                }
            }
        }
        return arrayList.toArray();
    }

    public a(@NonNull String str, @Nullable a... aVarArr) {
        this.f16368a = str;
        this.f16369b = aVarArr;
    }

    public static a a(@NonNull Object[] objArr) {
        return new a("literal", new c(objArr));
    }

    public static a a(@NonNull a aVar, @NonNull a aVar2, @NonNull a aVar3, @NonNull a aVar4) {
        return new a("rgba", aVar, aVar2, aVar3, aVar4);
    }

    public static a a(@NonNull Number number, @NonNull Number number2, @NonNull Number number3, @NonNull Number number4) {
        return a(a(number), a(number2), a(number3), a(number4));
    }

    public static a a(@NonNull @Size(min = 2) a... aVarArr) {
        return new a("match", aVarArr);
    }

    public static a a(@NonNull a aVar, @NonNull a aVar2, @NonNull f... fVarArr) {
        return a(a(a(new a[]{aVar}, f.a(fVarArr)), new a[]{aVar2}));
    }

    @NonNull
    private static Object[] b(Object obj) {
        int length = Array.getLength(obj);
        Object[] objArr = new Object[length];
        for (int i2 = 0; i2 < length; i2++) {
            objArr[i2] = Array.get(obj, i2);
        }
        return objArr;
    }

    public static a a(@NonNull Polygon polygon) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", b(polygon.type()));
        hashMap.put("json", b(polygon.toJson()));
        return new a("within", new d(hashMap));
    }

    public static a a(@NonNull a aVar) {
        return new a("get", aVar);
    }

    public static a a(@NonNull String str) {
        return a(b(str));
    }

    public static f a(@NonNull Object obj, @NonNull Object obj2) {
        return new f(obj, obj2);
    }

    /* compiled from: Expression.java */
    /* renamed from: com.mapbox.mapboxsdk.u.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0170a {

        /* renamed from: a, reason: collision with root package name */
        private static final Gson f16370a = new Gson();

        public static a a(@NonNull JsonArray jsonArray) {
            if (jsonArray.size() != 0) {
                String asString = jsonArray.get(0).getAsString();
                ArrayList arrayList = new ArrayList();
                if (asString.equals("within")) {
                    return a.a(Polygon.fromJson(jsonArray.get(1).toString()));
                }
                for (int i2 = 1; i2 < jsonArray.size(); i2++) {
                    JsonElement jsonElement = jsonArray.get(i2);
                    if (asString.equals("literal") && (jsonElement instanceof JsonArray)) {
                        JsonArray jsonArray2 = (JsonArray) jsonElement;
                        Object[] objArr = new Object[jsonArray2.size()];
                        for (int i3 = 0; i3 < jsonArray2.size(); i3++) {
                            JsonElement jsonElement2 = jsonArray2.get(i3);
                            if (jsonElement2 instanceof JsonPrimitive) {
                                objArr[i3] = b((JsonPrimitive) jsonElement2);
                            } else {
                                throw new IllegalArgumentException("Nested literal arrays are not supported.");
                            }
                        }
                        arrayList.add(new c(objArr));
                    } else {
                        arrayList.add(a(jsonElement));
                    }
                }
                return new a(asString, (a[]) arrayList.toArray(new a[arrayList.size()]));
            }
            throw new IllegalArgumentException("Can't convert empty jsonArray expressions");
        }

        private static Object b(@NonNull JsonPrimitive jsonPrimitive) {
            if (jsonPrimitive.isBoolean()) {
                return Boolean.valueOf(jsonPrimitive.getAsBoolean());
            }
            if (jsonPrimitive.isNumber()) {
                return Float.valueOf(jsonPrimitive.getAsFloat());
            }
            if (jsonPrimitive.isString()) {
                return jsonPrimitive.getAsString();
            }
            throw new RuntimeException("Unsupported literal expression conversion for " + jsonPrimitive.getClass());
        }

        public static a a(@NonNull JsonElement jsonElement) {
            if (jsonElement instanceof JsonArray) {
                return a((JsonArray) jsonElement);
            }
            if (jsonElement instanceof JsonPrimitive) {
                return a((JsonPrimitive) jsonElement);
            }
            if (jsonElement instanceof j) {
                return new b("");
            }
            if (jsonElement instanceof JsonObject) {
                HashMap hashMap = new HashMap();
                JsonObject jsonObject = (JsonObject) jsonElement;
                for (String str : jsonObject.keySet()) {
                    hashMap.put(str, a(jsonObject.get(str)));
                }
                return new d(hashMap);
            }
            throw new RuntimeException("Unsupported expression conversion for " + jsonElement.getClass());
        }

        private static a a(@NonNull JsonPrimitive jsonPrimitive) {
            return new b(b(jsonPrimitive));
        }

        public static a a(@NonNull String str) {
            return a((JsonArray) f16370a.a(str, JsonArray.class));
        }
    }

    public static a a(@NonNull e eVar, @NonNull a aVar, @NonNull a... aVarArr) {
        return new a("interpolate", a(new a[]{eVar, aVar}, aVarArr));
    }

    public static a a(@NonNull e eVar, @NonNull a aVar, f... fVarArr) {
        return a(eVar, aVar, f.a(fVarArr));
    }

    @NonNull
    private static a[] a(a[] aVarArr, a[] aVarArr2) {
        a[] aVarArr3 = new a[aVarArr.length + aVarArr2.length];
        System.arraycopy(aVarArr, 0, aVarArr3, 0, aVarArr.length);
        System.arraycopy(aVarArr2, 0, aVarArr3, aVarArr.length, aVarArr2.length);
        return aVarArr3;
    }
}
