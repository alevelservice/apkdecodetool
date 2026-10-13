.class final enum Lio/flutter/plugins/urllauncher/b$a;
.super Ljava/lang/Enum;
.source "UrlLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/urllauncher/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/urllauncher/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVITY_NOT_FOUND:Lio/flutter/plugins/urllauncher/b$a;

.field public static final enum NO_ACTIVITY:Lio/flutter/plugins/urllauncher/b$a;

.field public static final enum OK:Lio/flutter/plugins/urllauncher/b$a;

.field private static final synthetic e:[Lio/flutter/plugins/urllauncher/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/flutter/plugins/urllauncher/b$a;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lio/flutter/plugins/urllauncher/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/urllauncher/b$a;->OK:Lio/flutter/plugins/urllauncher/b$a;

    .line 2
    new-instance v0, Lio/flutter/plugins/urllauncher/b$a;

    const/4 v2, 0x1

    const-string v3, "NO_ACTIVITY"

    invoke-direct {v0, v3, v2}, Lio/flutter/plugins/urllauncher/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/urllauncher/b$a;->NO_ACTIVITY:Lio/flutter/plugins/urllauncher/b$a;

    .line 3
    new-instance v0, Lio/flutter/plugins/urllauncher/b$a;

    const/4 v3, 0x2

    const-string v4, "ACTIVITY_NOT_FOUND"

    invoke-direct {v0, v4, v3}, Lio/flutter/plugins/urllauncher/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/urllauncher/b$a;->ACTIVITY_NOT_FOUND:Lio/flutter/plugins/urllauncher/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/plugins/urllauncher/b$a;

    .line 4
    sget-object v4, Lio/flutter/plugins/urllauncher/b$a;->OK:Lio/flutter/plugins/urllauncher/b$a;

    aput-object v4, v0, v1

    sget-object v1, Lio/flutter/plugins/urllauncher/b$a;->NO_ACTIVITY:Lio/flutter/plugins/urllauncher/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/plugins/urllauncher/b$a;->ACTIVITY_NOT_FOUND:Lio/flutter/plugins/urllauncher/b$a;

    aput-object v1, v0, v3

    sput-object v0, Lio/flutter/plugins/urllauncher/b$a;->e:[Lio/flutter/plugins/urllauncher/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/urllauncher/b$a;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/plugins/urllauncher/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/urllauncher/b$a;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/urllauncher/b$a;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/urllauncher/b$a;->e:[Lio/flutter/plugins/urllauncher/b$a;

    invoke-virtual {v0}, [Lio/flutter/plugins/urllauncher/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugins/urllauncher/b$a;

    return-object v0
.end method
