.class public Le/f/i/c/l;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/common/internal/j;Le/f/c/f/c;)Le/f/i/c/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Le/f/i/c/q;",
            ">;",
            "Le/f/c/f/c;",
            ")",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/i/c/l$a;

    invoke-direct {v0}, Le/f/i/c/l$a;-><init>()V

    .line 2
    new-instance v1, Le/f/i/c/s;

    invoke-direct {v1}, Le/f/i/c/s;-><init>()V

    .line 3
    new-instance v2, Le/f/i/c/h;

    invoke-direct {v2, v0, v1, p0}, Le/f/i/c/h;-><init>(Le/f/i/c/v;Le/f/i/c/h$c;Lcom/facebook/common/internal/j;)V

    .line 4
    invoke-interface {p1, v2}, Le/f/c/f/c;->a(Le/f/c/f/b;)V

    return-object v2
.end method
