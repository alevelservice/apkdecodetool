.class public Lio/flutter/embedding/android/c;
.super Ljava/lang/Object;
.source "FlutterActivityLaunchConfigs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/c$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/embedding/android/c$a;->opaque:Lio/flutter/embedding/android/c$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/android/c;->a:Ljava/lang/String;

    return-void
.end method
