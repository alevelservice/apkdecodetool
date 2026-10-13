.class public final enum Lio/flutter/embedding/android/k;
.super Ljava/lang/Enum;
.source "TransparencyMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Lio/flutter/embedding/android/k;

.field public static final enum opaque:Lio/flutter/embedding/android/k;

.field public static final enum transparent:Lio/flutter/embedding/android/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/embedding/android/k;

    const/4 v1, 0x0

    const-string v2, "opaque"

    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/android/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/k;->opaque:Lio/flutter/embedding/android/k;

    .line 2
    new-instance v0, Lio/flutter/embedding/android/k;

    const/4 v2, 0x1

    const-string v3, "transparent"

    invoke-direct {v0, v3, v2}, Lio/flutter/embedding/android/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/k;->transparent:Lio/flutter/embedding/android/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/flutter/embedding/android/k;

    .line 3
    sget-object v3, Lio/flutter/embedding/android/k;->opaque:Lio/flutter/embedding/android/k;

    aput-object v3, v0, v1

    sget-object v1, Lio/flutter/embedding/android/k;->transparent:Lio/flutter/embedding/android/k;

    aput-object v1, v0, v2

    sput-object v0, Lio/flutter/embedding/android/k;->e:[Lio/flutter/embedding/android/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/k;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/embedding/android/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/k;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/k;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/embedding/android/k;->e:[Lio/flutter/embedding/android/k;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/k;

    return-object v0
.end method
