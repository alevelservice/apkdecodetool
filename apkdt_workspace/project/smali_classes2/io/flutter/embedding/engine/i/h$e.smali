.class public final enum Lio/flutter/embedding/engine/i/h$e;
.super Ljava/lang/Enum;
.source "PlatformChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/i/h$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PLAIN_TEXT:Lio/flutter/embedding/engine/i/h$e;

.field private static final synthetic e:[Lio/flutter/embedding/engine/i/h$e;


# instance fields
.field private encodedName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/embedding/engine/i/h$e;

    const/4 v1, 0x0

    const-string v2, "PLAIN_TEXT"

    const-string v3, "text/plain"

    invoke-direct {v0, v2, v1, v3}, Lio/flutter/embedding/engine/i/h$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/i/h$e;->PLAIN_TEXT:Lio/flutter/embedding/engine/i/h$e;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/flutter/embedding/engine/i/h$e;

    .line 2
    sget-object v2, Lio/flutter/embedding/engine/i/h$e;->PLAIN_TEXT:Lio/flutter/embedding/engine/i/h$e;

    aput-object v2, v0, v1

    sput-object v0, Lio/flutter/embedding/engine/i/h$e;->e:[Lio/flutter/embedding/engine/i/h$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/flutter/embedding/engine/i/h$e;->encodedName:Ljava/lang/String;

    return-void
.end method

.method static fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/i/h$e;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/flutter/embedding/engine/i/h$e;->values()[Lio/flutter/embedding/engine/i/h$e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lio/flutter/embedding/engine/i/h$e;->encodedName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such ClipboardContentFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/i/h$e;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/embedding/engine/i/h$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/i/h$e;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/i/h$e;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/embedding/engine/i/h$e;->e:[Lio/flutter/embedding/engine/i/h$e;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/i/h$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/i/h$e;

    return-object v0
.end method
