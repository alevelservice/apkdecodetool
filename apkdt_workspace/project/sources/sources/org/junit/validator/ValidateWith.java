package org.junit.validator;

import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Inherited
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface ValidateWith {
    Class<? extends a> value();
}
