.class public final enum Lio/flutter/embedding/android/c$a;
.super Ljava/lang/Enum;
.source "FlutterActivityLaunchConfigs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Lio/flutter/embedding/android/c$a;

.field public static final enum opaque:Lio/flutter/embedding/android/c$a;

.field public static final enum transparent:Lio/flutter/embedding/android/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/embedding/android/c$a;

    const/4 v1, 0x0

    const-string v2, "opaque"

    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/android/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/c$a;->opaque:Lio/flutter/embedding/android/c$a;

    .line 2
    new-instance v0, Lio/flutter/embedding/android/c$a;

    const/4 v2, 0x1

    const-string v3, "transparent"

    invoke-direct {v0, v3, v2}, Lio/flutter/embedding/android/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/c$a;->transparent:Lio/flutter/embedding/android/c$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/flutter/embedding/android/c$a;

    .line 3
    sget-object v3, Lio/flutter/embedding/android/c$a;->opaque:Lio/flutter/embedding/android/c$a;

    aput-object v3, v0, v1

    sget-object v1, Lio/flutter/embedding/android/c$a;->transparent:Lio/flutter/embedding/android/c$a;

    aput-object v1, v0, v2

    sput-object v0, Lio/flutter/embedding/android/c$a;->e:[Lio/flutter/embedding/android/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/c$a;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/embedding/android/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/c$a;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/c$a;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/embedding/android/c$a;->e:[Lio/flutter/embedding/android/c$a;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/c$a;

    return-object v0
.end method
