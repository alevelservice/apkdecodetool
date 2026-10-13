.class public Le/b/b/a/a/d/c$e;
.super Ljava/lang/Object;
.source "MASLayout.java"

# interfaces
.implements Le/b/b/a/a/d/c$d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/b/b/a/a/b/b;",
        ">",
        "Ljava/lang/Object;",
        "Le/b/b/a/a/d/c$d$a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b/b/a/a/b/b;Le/b/b/a/a/d/c$b/e;)Le/b/b/a/a/d/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/b/b/a/a/d/c$b/e<",
            "TT;>;)",
            "Le/b/b/a/a/d/c$c;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/b/b/a/a/d/c$c;

    invoke-direct {v0}, Le/b/b/a/a/d/c$c;-><init>()V

    .line 2
    invoke-interface {p2, p1}, Le/b/b/a/a/d/c$b/e;->a(Le/b/b/a/a/b/b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/b/b/a/a/d/c$c;->b(Ljava/lang/String;)V

    const-string p2, "MAS"

    .line 3
    invoke-virtual {v0, p2}, Le/b/b/a/a/d/c$c;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/b/b/a/a/d/c$c;->a(Ljava/lang/String;)V

    return-object v0
.end method
