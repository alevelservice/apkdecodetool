.class Lcom/zoloz/dfp/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# static fields
.field public static a:Ljava/lang/String; = "modified"

.field public static b:Ljava/lang/String; = "dfp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "toyger"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a([B)[B
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/zoloz/dfp/Signer;->checkSignature([B)Ljava/util/Map;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/zoloz/dfp/Signer;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3
    sget-object v1, Lcom/zoloz/dfp/Signer;->a:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static native checkSignature([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public static native sign([B)[B
.end method
