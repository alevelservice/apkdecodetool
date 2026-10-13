.class public final Lg/c/a/f/e/a/d;
.super Lg/c/a/f/e/a/a;
.source "ObservableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/f/e/a/d$b;,
        Lg/c/a/f/e/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg/c/a/f/e/a/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lg/c/a/b/g;


# direct methods
.method public constructor <init>(Lg/c/a/b/e;Lg/c/a/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/e<",
            "TT;>;",
            "Lg/c/a/b/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/c/a/f/e/a/a;-><init>(Lg/c/a/b/e;)V

    .line 2
    iput-object p2, p0, Lg/c/a/f/e/a/d;->b:Lg/c/a/b/g;

    return-void
.end method


# virtual methods
.method public b(Lg/c/a/b/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/f<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/c/a/f/e/a/d$a;

    invoke-direct {v0, p1}, Lg/c/a/f/e/a/d$a;-><init>(Lg/c/a/b/f;)V

    .line 2
    invoke-interface {p1, v0}, Lg/c/a/b/f;->onSubscribe(Lg/c/a/c/c;)V

    .line 3
    iget-object p1, p0, Lg/c/a/f/e/a/d;->b:Lg/c/a/b/g;

    new-instance v1, Lg/c/a/f/e/a/d$b;

    invoke-direct {v1, p0, v0}, Lg/c/a/f/e/a/d$b;-><init>(Lg/c/a/f/e/a/d;Lg/c/a/f/e/a/d$a;)V

    invoke-virtual {p1, v1}, Lg/c/a/b/g;->a(Ljava/lang/Runnable;)Lg/c/a/c/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/c/a/f/e/a/d$a;->setDisposable(Lg/c/a/c/c;)V

    return-void
.end method
