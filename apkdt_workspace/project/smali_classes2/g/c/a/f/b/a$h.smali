.class final Lg/c/a/f/b/a$h;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lg/c/a/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/c/a/e/d<",
        "Lk/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lk/a/b;

    invoke-virtual {p0, p1}, Lg/c/a/f/b/a$h;->a(Lk/a/b;)V

    return-void
.end method

.method public a(Lk/a/b;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Lk/a/b;->a(J)V

    return-void
.end method
