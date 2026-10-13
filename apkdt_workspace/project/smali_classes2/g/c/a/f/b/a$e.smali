.class final Lg/c/a/f/b/a$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/c/a/e/d<",
        "Ljava/lang/Throwable;",
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
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/c/a/f/b/a$e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method
