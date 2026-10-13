.class public Le/f/i/c/a;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/common/internal/j;Le/f/c/f/c;Le/f/i/c/h$c;)Le/f/i/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Le/f/i/c/q;",
            ">;",
            "Le/f/c/f/c;",
            "Le/f/i/c/h$c;",
            ")",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/i/c/a$a;

    invoke-direct {v0}, Le/f/i/c/a$a;-><init>()V

    .line 2
    new-instance v1, Le/f/i/c/h;

    invoke-direct {v1, v0, p2, p0}, Le/f/i/c/h;-><init>(Le/f/i/c/v;Le/f/i/c/h$c;Lcom/facebook/common/internal/j;)V

    .line 3
    invoke-interface {p1, v1}, Le/f/c/f/c;->a(Le/f/c/f/b;)V

    return-object v1
.end method
