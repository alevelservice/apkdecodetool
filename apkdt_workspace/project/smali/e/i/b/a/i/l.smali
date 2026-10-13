.class abstract Le/i/b/a/i/l;
.super Ljava/lang/Object;
.source "SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/a/i/l$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Le/i/b/a/i/l$a;
    .locals 1

    .line 1
    new-instance v0, Le/i/b/a/i/b$b;

    invoke-direct {v0}, Le/i/b/a/i/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Le/i/b/a/b;
.end method

.method abstract b()Le/i/b/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/a/c<",
            "*>;"
        }
    .end annotation
.end method

.method public c()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/l;->d()Le/i/b/a/e;

    move-result-object v0

    invoke-virtual {p0}, Le/i/b/a/i/l;->b()Le/i/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Le/i/b/a/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Le/i/b/a/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method abstract d()Le/i/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/a/e<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract e()Le/i/b/a/i/m;
.end method

.method public abstract f()Ljava/lang/String;
.end method
