.class public final enum Lio/flutter/embedding/android/FlutterView$e;
.super Ljava/lang/Enum;
.source "FlutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/FlutterView$e;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic e:[Lio/flutter/embedding/android/FlutterView$e;

.field public static final enum image:Lio/flutter/embedding/android/FlutterView$e;

.field public static final enum surface:Lio/flutter/embedding/android/FlutterView$e;

.field public static final enum texture:Lio/flutter/embedding/android/FlutterView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/flutter/embedding/android/FlutterView$e;

    const/4 v1, 0x0

    const-string v2, "surface"

    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/android/FlutterView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$e;->surface:Lio/flutter/embedding/android/FlutterView$e;

    .line 2
    new-instance v0, Lio/flutter/embedding/android/FlutterView$e;

    const/4 v2, 0x1

    const-string v3, "texture"

    invoke-direct {v0, v3, v2}, Lio/flutter/embedding/android/FlutterView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$e;->texture:Lio/flutter/embedding/android/FlutterView$e;

    .line 3
    new-instance v0, Lio/flutter/embedding/android/FlutterView$e;

    const/4 v3, 0x2

    const-string v4, "image"

    invoke-direct {v0, v4, v3}, Lio/flutter/embedding/android/FlutterView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$e;->image:Lio/flutter/embedding/android/FlutterView$e;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/embedding/android/FlutterView$e;

    .line 4
    sget-object v4, Lio/flutter/embedding/android/FlutterView$e;->surface:Lio/flutter/embedding/android/FlutterView$e;

    aput-object v4, v0, v1

    sget-object v1, Lio/flutter/embedding/android/FlutterView$e;->texture:Lio/flutter/embedding/android/FlutterView$e;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/android/FlutterView$e;->image:Lio/flutter/embedding/android/FlutterView$e;

    aput-object v1, v0, v3

    sput-object v0, Lio/flutter/embedding/android/FlutterView$e;->e:[Lio/flutter/embedding/android/FlutterView$e;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterView$e;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/embedding/android/FlutterView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/FlutterView$e;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/FlutterView$e;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/embedding/android/FlutterView$e;->e:[Lio/flutter/embedding/android/FlutterView$e;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/FlutterView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/FlutterView$e;

    return-object v0
.end method
