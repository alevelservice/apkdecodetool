.class public final Lg/c/a/f/e/a/c;
.super Lg/c/a/f/e/a/a;
.source "ObservableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/f/e/a/c$a;
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

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Lg/c/a/b/e;Lg/c/a/b/g;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/e<",
            "TT;>;",
            "Lg/c/a/b/g;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/c/a/f/e/a/a;-><init>(Lg/c/a/b/e;)V

    .line 2
    iput-object p2, p0, Lg/c/a/f/e/a/c;->b:Lg/c/a/b/g;

    .line 3
    iput-boolean p3, p0, Lg/c/a/f/e/a/c;->c:Z

    .line 4
    iput p4, p0, Lg/c/a/f/e/a/c;->d:I

    return-void
.end method


# virtual methods
.method protected b(Lg/c/a/b/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/f<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/c;->b:Lg/c/a/b/g;

    instance-of v1, v0, Lg/c/a/f/g/m;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lg/c/a/f/e/a/a;->a:Lg/c/a/b/e;

    invoke-interface {v0, p1}, Lg/c/a/b/e;->a(Lg/c/a/b/f;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lg/c/a/b/g;->a()Lg/c/a/b/g$b;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lg/c/a/f/e/a/a;->a:Lg/c/a/b/e;

    new-instance v2, Lg/c/a/f/e/a/c$a;

    iget-boolean v3, p0, Lg/c/a/f/e/a/c;->c:Z

    iget v4, p0, Lg/c/a/f/e/a/c;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lg/c/a/f/e/a/c$a;-><init>(Lg/c/a/b/f;Lg/c/a/b/g$b;ZI)V

    invoke-interface {v1, v2}, Lg/c/a/b/e;->a(Lg/c/a/b/f;)V

    :goto_0
    return-void
.end method
