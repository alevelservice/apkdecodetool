.class public Le/f/i/c/b;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheFactory.java"


# direct methods
.method public static a(Le/f/i/c/h;Le/f/i/c/n;)Le/f/i/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;",
            "Le/f/i/c/n;",
            ")",
            "Le/f/i/c/o<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Le/f/i/c/n;->a(Le/f/i/c/h;)V

    .line 2
    new-instance v0, Le/f/i/c/b$a;

    invoke-direct {v0, p1}, Le/f/i/c/b$a;-><init>(Le/f/i/c/n;)V

    .line 3
    new-instance p1, Le/f/i/c/o;

    invoke-direct {p1, p0, v0}, Le/f/i/c/o;-><init>(Le/f/i/c/p;Le/f/i/c/r;)V

    return-object p1
.end method
