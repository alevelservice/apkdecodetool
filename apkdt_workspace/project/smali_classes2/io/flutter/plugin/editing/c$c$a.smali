.class final enum Lio/flutter/plugin/editing/c$c$a;
.super Ljava/lang/Enum;
.source "TextInputPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/editing/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugin/editing/c$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FRAMEWORK_CLIENT:Lio/flutter/plugin/editing/c$c$a;

.field public static final enum NO_TARGET:Lio/flutter/plugin/editing/c$c$a;

.field public static final enum PLATFORM_VIEW:Lio/flutter/plugin/editing/c$c$a;

.field private static final synthetic e:[Lio/flutter/plugin/editing/c$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/flutter/plugin/editing/c$c$a;

    const/4 v1, 0x0

    const-string v2, "NO_TARGET"

    invoke-direct {v0, v2, v1}, Lio/flutter/plugin/editing/c$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugin/editing/c$c$a;->NO_TARGET:Lio/flutter/plugin/editing/c$c$a;

    .line 2
    new-instance v0, Lio/flutter/plugin/editing/c$c$a;

    const/4 v2, 0x1

    const-string v3, "FRAMEWORK_CLIENT"

    invoke-direct {v0, v3, v2}, Lio/flutter/plugin/editing/c$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugin/editing/c$c$a;->FRAMEWORK_CLIENT:Lio/flutter/plugin/editing/c$c$a;

    .line 3
    new-instance v0, Lio/flutter/plugin/editing/c$c$a;

    const/4 v3, 0x2

    const-string v4, "PLATFORM_VIEW"

    invoke-direct {v0, v4, v3}, Lio/flutter/plugin/editing/c$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugin/editing/c$c$a;->PLATFORM_VIEW:Lio/flutter/plugin/editing/c$c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/plugin/editing/c$c$a;

    .line 4
    sget-object v4, Lio/flutter/plugin/editing/c$c$a;->NO_TARGET:Lio/flutter/plugin/editing/c$c$a;

    aput-object v4, v0, v1

    sget-object v1, Lio/flutter/plugin/editing/c$c$a;->FRAMEWORK_CLIENT:Lio/flutter/plugin/editing/c$c$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/plugin/editing/c$c$a;->PLATFORM_VIEW:Lio/flutter/plugin/editing/c$c$a;

    aput-object v1, v0, v3

    sput-object v0, Lio/flutter/plugin/editing/c$c$a;->e:[Lio/flutter/plugin/editing/c$c$a;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugin/editing/c$c$a;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/plugin/editing/c$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugin/editing/c$c$a;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugin/editing/c$c$a;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugin/editing/c$c$a;->e:[Lio/flutter/plugin/editing/c$c$a;

    invoke-virtual {v0}, [Lio/flutter/plugin/editing/c$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugin/editing/c$c$a;

    return-object v0
.end method
