.class public final enum Lio/flutter/embedding/android/FlutterImageView$b;
.super Ljava/lang/Enum;
.source "FlutterImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/FlutterImageView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum background:Lio/flutter/embedding/android/FlutterImageView$b;

.field private static final synthetic e:[Lio/flutter/embedding/android/FlutterImageView$b;

.field public static final enum overlay:Lio/flutter/embedding/android/FlutterImageView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/embedding/android/FlutterImageView$b;

    const/4 v1, 0x0

    const-string v2, "background"

    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/android/FlutterImageView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterImageView$b;->background:Lio/flutter/embedding/android/FlutterImageView$b;

    .line 2
    new-instance v0, Lio/flutter/embedding/android/FlutterImageView$b;

    const/4 v2, 0x1

    const-string v3, "overlay"

    invoke-direct {v0, v3, v2}, Lio/flutter/embedding/android/FlutterImageView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/FlutterImageView$b;->overlay:Lio/flutter/embedding/android/FlutterImageView$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/flutter/embedding/android/FlutterImageView$b;

    .line 3
    sget-object v3, Lio/flutter/embedding/android/FlutterImageView$b;->background:Lio/flutter/embedding/android/FlutterImageView$b;

    aput-object v3, v0, v1

    sget-object v1, Lio/flutter/embedding/android/FlutterImageView$b;->overlay:Lio/flutter/embedding/android/FlutterImageView$b;

    aput-object v1, v0, v2

    sput-object v0, Lio/flutter/embedding/android/FlutterImageView$b;->e:[Lio/flutter/embedding/android/FlutterImageView$b;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterImageView$b;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/embedding/android/FlutterImageView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/FlutterImageView$b;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/FlutterImageView$b;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/embedding/android/FlutterImageView$b;->e:[Lio/flutter/embedding/android/FlutterImageView$b;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/FlutterImageView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/FlutterImageView$b;

    return-object v0
.end method
