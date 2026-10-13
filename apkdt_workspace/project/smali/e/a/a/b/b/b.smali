.class public abstract Le/a/a/b/b/b;
.super Ljava/lang/Object;
.source "TAssert.java"


# direct methods
.method public static a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "[Assertion failed] - this argument is required; it must not be null"

    .line 2
    invoke-static {p0, v0}, Le/a/a/b/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
