.class public Le/b/b/a/a/e/p;
.super Ljava/lang/Object;
.source "TraceIdUtil.java"


# static fields
.field public static a:Ljava/lang/String; = "_"

.field private static b:I = 0x1

.field private static c:Ljava/lang/String; = ""


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "20000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Le/b/b/a/a/e/p;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Le/b/b/a/a/e/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/b/b/a/a/e/p;->c:Ljava/lang/String;

    .line 2
    sget-object v0, Le/b/b/a/a/e/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Le/b/b/a/a/e/p;->b:I

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ne v0, v2, :cond_0

    .line 2
    sput v1, Le/b/b/a/a/e/p;->b:I

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    sget v2, Le/b/b/a/a/e/p;->b:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Le/b/b/a/a/e/p;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%04d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
