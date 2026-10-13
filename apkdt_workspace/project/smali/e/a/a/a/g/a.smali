.class public Le/a/a/a/g/a;
.super Ljava/lang/Object;
.source "AnnotationEventListener.java"

# interfaces
.implements Le/a/a/a/g/b;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target cannot be null."

    .line 2
    invoke-static {p1, v0}, Le/a/a/b/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method cannot be null."

    .line 3
    invoke-static {p2, v0}, Le/a/a/b/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Le/a/a/a/g/a;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/a/a/a/g/a;->b:Ljava/lang/reflect/Method;

    .line 6
    iput-object p3, p0, Le/a/a/a/g/a;->c:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public a(Le/a/a/a/c/a;)Le/a/a/a/f;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/a/g/a;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/a/g/a;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Le/a/a/a/g/a;->a:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Le/a/a/a/c/a;->c()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/a/g/a;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Le/a/a/a/g/a;->a:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    :goto_0
    instance-of v0, p1, Le/a/a/a/f;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Le/a/a/a/f;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6
    :cond_1
    sget-object p1, Le/a/a/a/f;->SUCCESS:Le/a/a/a/f;

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Le/a/a/a/e/a;

    invoke-direct {v0, p1}, Le/a/a/a/e/a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 8
    new-instance v0, Le/a/a/a/e/a;

    invoke-direct {v0, p1}, Le/a/a/a/e/a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
