.class public Le/o/a/b;
.super Ljava/lang/Object;
.source "InterceptorManager.java"

# interfaces
.implements Le/o/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/o/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/o/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Le/o/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/o/a/b;-><init>()V

    return-void
.end method

.method public static a()Le/o/a/b;
    .locals 1

    .line 1
    sget-object v0, Le/o/a/b$a;->a:Le/o/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Le/o/a/d;)V
    .locals 2

    .line 7
    iget-object v0, p0, Le/o/a/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/o/a/f;

    .line 11
    invoke-interface {v1, p1}, Le/o/a/f;->a(Le/o/a/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Le/o/a/d;Le/o/a/e;)V
    .locals 2

    .line 2
    iget-object v0, p0, Le/o/a/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/o/a/f;

    .line 6
    invoke-interface {v1, p1, p2}, Le/o/a/f;->a(Le/o/a/d;Le/o/a/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method
