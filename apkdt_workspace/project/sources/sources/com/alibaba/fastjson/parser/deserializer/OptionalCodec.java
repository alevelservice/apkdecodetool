package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.util.TypeUtils;
import com.hjq.permissions.PermissionChecker$$ExternalSyntheticApiModelOutline0;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;

/* loaded from: classes.dex */
public class OptionalCodec implements ObjectSerializer, ObjectDeserializer {
    public static OptionalCodec instance = new OptionalCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        Object of;
        Object empty;
        Object of2;
        Object empty2;
        Object of3;
        Object empty3;
        Object of4;
        Object empty4;
        if (type == PermissionChecker$$ExternalSyntheticApiModelOutline0.m$6()) {
            Integer castToInt = TypeUtils.castToInt(defaultJSONParser.parseObject((Class) Integer.class));
            if (castToInt == null) {
                empty4 = OptionalInt.empty();
                return (T) empty4;
            }
            of4 = OptionalInt.of(castToInt.intValue());
            return (T) of4;
        }
        if (type == PermissionChecker$$ExternalSyntheticApiModelOutline0.m$7()) {
            Long castToLong = TypeUtils.castToLong(defaultJSONParser.parseObject((Class) Long.class));
            if (castToLong == null) {
                empty3 = OptionalLong.empty();
                return (T) empty3;
            }
            of3 = OptionalLong.of(castToLong.longValue());
            return (T) of3;
        }
        if (type == PermissionChecker$$ExternalSyntheticApiModelOutline0.m$8()) {
            Double castToDouble = TypeUtils.castToDouble(defaultJSONParser.parseObject((Class) Double.class));
            if (castToDouble == null) {
                empty2 = OptionalDouble.empty();
                return (T) empty2;
            }
            of2 = OptionalDouble.of(castToDouble.doubleValue());
            return (T) of2;
        }
        Object parseObject = defaultJSONParser.parseObject(TypeUtils.unwrapOptional(type));
        if (parseObject == null) {
            empty = Optional.empty();
            return (T) empty;
        }
        of = Optional.of(parseObject);
        return (T) of;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        boolean isPresent;
        long asLong;
        boolean isPresent2;
        int asInt;
        boolean isPresent3;
        double asDouble;
        boolean isPresent4;
        if (obj == null) {
            jSONSerializer.writeNull();
            return;
        }
        if (PermissionChecker$$ExternalSyntheticApiModelOutline0.m$4(obj)) {
            Optional m$1 = PermissionChecker$$ExternalSyntheticApiModelOutline0.m$1(obj);
            isPresent4 = m$1.isPresent();
            jSONSerializer.write(isPresent4 ? m$1.get() : null);
            return;
        }
        if (PermissionChecker$$ExternalSyntheticApiModelOutline0.m$2(obj)) {
            OptionalDouble m218m = PermissionChecker$$ExternalSyntheticApiModelOutline0.m218m(obj);
            isPresent3 = m218m.isPresent();
            if (isPresent3) {
                asDouble = m218m.getAsDouble();
                jSONSerializer.write(Double.valueOf(asDouble));
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (PermissionChecker$$ExternalSyntheticApiModelOutline0.m$3(obj)) {
            OptionalInt m220m = PermissionChecker$$ExternalSyntheticApiModelOutline0.m220m(obj);
            isPresent2 = m220m.isPresent();
            if (isPresent2) {
                asInt = m220m.getAsInt();
                jSONSerializer.out.writeInt(asInt);
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        if (PermissionChecker$$ExternalSyntheticApiModelOutline0.m$5(obj)) {
            OptionalLong m223m = PermissionChecker$$ExternalSyntheticApiModelOutline0.m223m(obj);
            isPresent = m223m.isPresent();
            if (isPresent) {
                asLong = m223m.getAsLong();
                jSONSerializer.out.writeLong(asLong);
                return;
            } else {
                jSONSerializer.writeNull();
                return;
            }
        }
        throw new JSONException("not support optional : " + obj.getClass());
    }
}
