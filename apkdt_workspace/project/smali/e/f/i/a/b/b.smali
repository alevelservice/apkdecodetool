.class public Le/f/i/a/b/b;
.super Ljava/lang/Object;
.source "AnimatedFactoryProvider.java"


# static fields
.field private static a:Z

.field private static b:Le/f/i/a/b/a;


# direct methods
.method public static a(Le/f/i/b/f;Lcom/facebook/imagepipeline/core/e;Le/f/i/c/h;Z)Le/f/i/a/b/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/b/f;",
            "Lcom/facebook/imagepipeline/core/e;",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;Z)",
            "Le/f/i/a/b/a;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Le/f/i/a/b/b;->a:Z

    if-nez v0, :cond_0

    const-string v0, "com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl"

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Le/f/i/b/f;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/facebook/imagepipeline/core/e;

    aput-object v4, v3, v1

    const-class v4, Le/f/i/c/h;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v1

    aput-object p2, v2, v6

    .line 5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/f/i/a/b/a;

    sput-object p0, Le/f/i/a/b/b;->b:Le/f/i/a/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 7
    :goto_0
    sget-object p0, Le/f/i/a/b/b;->b:Le/f/i/a/b/a;

    if-eqz p0, :cond_0

    .line 8
    sput-boolean v1, Le/f/i/a/b/b;->a:Z

    .line 9
    :cond_0
    sget-object p0, Le/f/i/a/b/b;->b:Le/f/i/a/b/a;

    return-object p0
.end method
