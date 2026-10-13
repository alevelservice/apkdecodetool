.class public Le/f/d/d;
.super Ljava/lang/Object;
.source "DataSources.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/d/d$a;

    invoke-direct {v0, p0}, Le/f/d/d$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Le/f/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Le/f/d/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/f/d/h;->i()Le/f/d/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Le/f/d/h;->a(Ljava/lang/Throwable;)Z

    return-object v0
.end method
