.class final enum Lio/flutter/embedding/android/FlutterView$g;
.super Ljava/lang/Enum;
.source "FlutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/FlutterView$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lio/flutter/embedding/android/FlutterView$g;

.field public static final enum LEFT:Lio/flutter/embedding/android/FlutterView$g;

.field public static final enum NONE:Lio/flutter/embedding/android/FlutterView$g;

.field public static final enum RIGHT:Lio/flutter/embedding/android/FlutterView$g;

.field private static final synthetic e:[Lio/flutter/embedding/android/FlutterView$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/flutter/embedding/android/FlutterView$g;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/android/FlutterView$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$g;->NONE:Lio/flutter/embedding/android/FlutterView$g;

    .line 2
    new-instance v0, Lio/flutter/embedding/android/FlutterView$g;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2}, Lio/flutter/embedding/android/FlutterView$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$g;->LEFT:Lio/flutter/embedding/android/FlutterView$g;

    .line 3
    new-instance v0, Lio/flutter/embedding/android/FlutterView$g;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    invoke-direct {v0, v4, v3}, Lio/flutter/embedding/android/FlutterView$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$g;->RIGHT:Lio/flutter/embedding/android/FlutterView$g;

    .line 4
    new-instance v0, Lio/flutter/embedding/android/FlutterView$g;

    const/4 v4, 0x3

    const-string v5, "BOTH"

    invoke-direct {v0, v5, v4}, Lio/flutter/embedding/android/FlutterView$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterView$g;->BOTH:Lio/flutter/embedding/android/FlutterView$g;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/flutter/embedding/android/FlutterView$g;

    .line 5
    sget-object v5, Lio/flutter/embedding/android/FlutterView$g;->NONE:Lio/flutter/embedding/android/FlutterView$g;

    aput-object v5, v0, v1

    sget-object v1, Lio/flutter/embedding/android/FlutterView$g;->LEFT:Lio/flutter/embedding/android/FlutterView$g;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/android/FlutterView$g;->RIGHT:Lio/flutter/embedding/android/FlutterView$g;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/embedding/android/FlutterView$g;->BOTH:Lio/flutter/embedding/android/FlutterView$g;

    aput-object v1, v0, v4

    sput-object v0, Lio/flutter/embedding/android/FlutterView$g;->e:[Lio/flutter/embedding/android/FlutterView$g;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterView$g;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/embedding/android/FlutterView$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/FlutterView$g;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/FlutterView$g;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/embedding/android/FlutterView$g;->e:[Lio/flutter/embedding/android/FlutterView$g;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/FlutterView$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/FlutterView$g;

    return-object v0
.end method
