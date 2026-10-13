.class public Le/f/i/c/m;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheFactory.java"


# direct methods
.method public static a(Le/f/i/c/h;Le/f/i/c/n;)Le/f/i/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;",
            "Le/f/i/c/n;",
            ")",
            "Le/f/i/c/o<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Le/f/i/c/n;->b(Le/f/i/c/h;)V

    .line 2
    new-instance v0, Le/f/i/c/m$a;

    invoke-direct {v0, p1}, Le/f/i/c/m$a;-><init>(Le/f/i/c/n;)V

    .line 3
    new-instance p1, Le/f/i/c/o;

    invoke-direct {p1, p0, v0}, Le/f/i/c/o;-><init>(Le/f/i/c/p;Le/f/i/c/r;)V

    return-object p1
.end method
