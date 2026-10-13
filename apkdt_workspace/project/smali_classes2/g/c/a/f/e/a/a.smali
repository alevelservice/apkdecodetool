.class abstract Lg/c/a/f/e/a/a;
.super Lg/c/a/b/d;
.source "AbstractObservableWithUpstream.java"

# interfaces
.implements Lg/c/a/f/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lg/c/a/b/d<",
        "TU;>;",
        "Lg/c/a/f/c/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lg/c/a/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/b/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg/c/a/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg/c/a/b/d;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/f/e/a/a;->a:Lg/c/a/b/e;

    return-void
.end method
