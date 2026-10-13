package com.alibaba.fastjson.serializer;

import com.hjq.permissions.PermissionChecker$$ExternalSyntheticApiModelOutline0;
import java.io.IOException;
import java.lang.reflect.Type;
import org.objectweb.asm.Opcodes;

/* loaded from: classes.dex */
public class AdderSerializer implements ObjectSerializer {
    public static final AdderSerializer instance = new AdderSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        double doubleValue;
        long longValue;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (PermissionChecker$$ExternalSyntheticApiModelOutline0.m$6(obj)) {
            longValue = PermissionChecker$$ExternalSyntheticApiModelOutline0.m225m(obj).longValue();
            serializeWriter.writeFieldValue('{', "value", longValue);
            serializeWriter.write(Opcodes.LUSHR);
        } else if (PermissionChecker$$ExternalSyntheticApiModelOutline0.m$7(obj)) {
            doubleValue = PermissionChecker$$ExternalSyntheticApiModelOutline0.m224m(obj).doubleValue();
            serializeWriter.writeFieldValue('{', "value", doubleValue);
            serializeWriter.write(Opcodes.LUSHR);
        }
    }
}
