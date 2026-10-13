package kotlin.coroutines;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.SinceKotlin;

/* compiled from: Continuation.kt */
@Target({ElementType.TYPE})
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lkotlin/coroutines/RestrictsSuspension;", "", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
@kotlin.annotation.Target(allowedTargets = {kotlin.annotation.b.CLASS})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(kotlin.annotation.a.BINARY)
/* loaded from: classes.dex */
public @interface RestrictsSuspension {
}
